require 'csv'
require 'dotenv'
require 'mailgun-ruby'
require 'onetime/api'

Dotenv.load

class CredentialCreator
  attr_reader :onetime, :mailgun

  def initialize
    @onetime = Onetime::API.new ENV['ONETIME_EMAIL'], ENV['ONETIME_API_KEY']
    @mailgun = Mailgun::Client.new ENV['MAILGUN_API_KEY']
  end

  def existing_emails
    @existing_emails ||= mailgun.get('/domains/climatechange.ai/credentials').to_h['items'].map do |cred|
      cred['login']
    end
  end

  def create_credential(ccai_login, orig_email)
    ccai_email = "#{ccai_login}@climatechange.ai"

    if orig_email.to_s.strip == ""
      puts "\nSkipping because the row is blank"
    elsif existing_emails.include?(ccai_email)
      puts "\nSkipping Mailgun credential creation for #{ccai_login} since it already exists"
    else
      password = SecureRandom.urlsafe_base64(24)

      puts "\nCreating Mailgun credential..."

      credential = mailgun.post('/domains/climatechange.ai/credentials', {
        login: ccai_login,
        password: password
      })

      puts "Created Mailgun credential:"
      puts credential.to_h

      secret_msg = "Here is your password to set up your CCAI email at #{ccai_email}:\n\n#{password}\n\nPlease copy this and follow the instructions at https://docs.google.com/document/d/1m5gIZdb-TS56i50VNUaHez4maqNAw7IfOMvhp7Bw-M0. Don't close this window until you've completed the instructions, as the password will only be visible once :)"

      secret = onetime.post '/share', {
        secret: secret_msg,
        recipient: orig_email,
        ttl: 60*60*24*14
      }

      puts "Sent onetimesecret:"

      puts "https://onetimesecret.com/secret/#{secret["secret_key"]}"
    end
  end
end

cc = CredentialCreator.new

if ARGV.length == 2
  ccai_login, orig_email = ARGV
  cc.create_credential(ccai_login, orig_email)
elsif ARGV.length == 1 && ARGV.first =~ /\.csv$/
  CSV.read(ARGV.first, headers: true).each do |row|
    ccai_login = row['CCAI email id ({}@climatechange.ai)']
    orig_email = row['Preferred non-CCAI email address for internal/external emails']
    cc.create_credential(ccai_login, orig_email)
  end
else
  raise "Couldn't parse your arguments: #{ARGV.inspect}"
end
