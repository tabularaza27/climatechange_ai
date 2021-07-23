---
layout: default
title: 'Climate Change AI'
description: 'ICML 2021 Livestream: Tackling Climate Change with Machine Learning'
og_image_url: 'https://www.climatechange.ai/images/icml-2021-preview.png'
og_image_type: 'image/png'
og_image_width: 2803
og_image_height: 1424
---

<nav class="breadcrumb" aria-label="breadcrumbs">
  <ul>
    <li><a href="/events/icml2021">ICML 2021 Workshop</a></li>
    <li class='is-active'><a href="#" aria-current="page">Livestream</a></li>
  </ul>
</nav>
<hr>

<h2>Livestream</h2>

<p>If the embedded livestream is not working, you can also try a <a href='https://slideslive.com/38964340' target='_blank'>direct link</a>.</p>

<div id="presentation-embed-38964340"></div>

<script src='https://slideslive.com/embed_presentation.js'></script>
<script>
    embed = new SlidesLiveEmbed('presentation-embed-38964340', {
        presentationId: '38964340',
        autoPlay: false, // change to true to autoplay the embedded presentation
        verticalEnabled: true
    });
</script>

<h2>Chatroom</h2>

<p>Note that joining the live chat requires an <a href='https://icml.cc/Register/view-registration' target='_blank'>ICML registration</a>.
To access the chat, you may first need to log in through the <a href="https://icml.cc/virtual/2021/workshop/8350" target="_blank">ICML virtual site</a>.</p>

<p>If the embedded chat is not working, you can also try a <a href='https://chat.icml.cc/channel/tackling-climate-change-with-machine-learning-16' target='_blank'>direct link</a>.</p>

<iframe frameborder="0" src="https://chat.icml.cc/channel/tackling-climate-change-with-machine-learning-16?layout=embedded" width="100%" height="600px" style="display: block"></iframe>

<div class="modal is-active">
  <div class="modal-background"></div>
  <div class="modal-card">
  <header class="modal-card-head">
    <p class="modal-card-title">Sign in</p>
  </header>
  <section class="modal-card-body">
    <p>Thanks for attending the workshop! Please take a few seconds to tell us a bit about yourself. (You can click anywhere outside this window to close it.)</p>

    <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSe8ArlTYYkAlmj4kIlpoCh7qWYnmtZnQnNKAcnTePw10BTlrg/viewform?embedded=true" width="100%" height="600" frameborder="0" marginheight="0" marginwidth="0" style="border: 1px solid #ccc; padding-top: 1rem;">Loading…</iframe>
  </section>
  <footer class="modal-card-foot">
    <button class="button is-success close-button">View Livestream</button>
  </footer>
  </div>
</div>

<h2>Poster sessions</h2>
<p>Our poster sessions will be held in our <a href='https://tinyurl.com/CCAIICML2021-Poster-Session' target='_blank'>online space</a>; information about presentation times is available on <a href='https://www.climatechange.ai/events/icml2021#schedule' target='_blank'>our schedule</a>.</p>
<p>Note that joining our poster session requires <a href='https://icml.cc/Register/view-registration' target='_blank'>ICML registration</a>.</p>

<script type='text/javascript'>

function setCookie(cname, cvalue, exdays) {
  var d = new Date();
  d.setTime(d.getTime() + (exdays*24*60*60*1000));
  var expires = "expires="+ d.toUTCString();
  document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
  var name = cname + "=";
  var decodedCookie = decodeURIComponent(document.cookie);
  var ca = decodedCookie.split(';');
  for(var i = 0; i <ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}

$(document).ready(() => {
  function closeModal() {
    $('.modal').removeClass('is-active');
    setCookie('closed-icml2021-modal', true);
  }

  $('.modal-background').click(closeModal);

  $('.close-button').click(closeModal);

  if (getCookie('closed-icml2021-modal')) {
    closeModal();
  }
});

</script>
