Climate change is one of the greatest problems society has ever faced, with increasingly severe consequences for humanity as natural disasters multiply, sea levels rise, and ecosystems falter. Since climate change is a complex issue, action takes many forms, from designing smart electric grids to tracking greenhouse gas emissions through satellite imagery. While no silver bullet, machine learning can be an invaluable tool in fighting climate change via a wide array of applications and techniques. These applications require algorithmic innovations in machine learning and close collaboration with diverse fields and practitioners. 

## Running the site locally

1. Ensure [git](https://git-scm.com/) is installed
1. Ensure [ruby](https://www.ruby-lang.org/en/downloads/) is installed (ideally v2.6.6 or 2.7.x -- with the help of a [ruby version manager](https://github.com/rbenv/rbenv)!)
1. Ensure [bundler](https://bundler.io/) is installed for downloading Ruby dependencies (run `gem install bundler` if not)
1. Clone this repository and `cd` into it (e.g. `git clone https://github.com/climatechange-ai/climatechange_ai.git && cd climatechange_ai`)
1. Run `git submodule update --init --recursive` to get additional files stored in a Git submodule
1. Run `bundle install` to install Ruby library dependencies
1. Run `bundle exec jekyll serve` to build and locally serve the site, wait ~20 seconds
1. Visit `localhost:4000` in your web browser to test out the site locally!
1. Make any changes to files you want to test, then wait for the site to rebuild (should take ~10 seconds for each change)
