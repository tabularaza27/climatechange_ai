<h1>Climate Change AI Summer School 2021</h1>

<div class='buttons' id='sticky-nav'>
  <a class='button' href='#about'>About</a>
  <a class='button' href='#call-for-participation'>Call for Submissions</a>
  <a class='button' href='#organizers'>Organizers</a>
</div>

## Subsection 1

Content

## Subsection 2

Content

## FAQ

### Eligibility

_Q: Does my institution qualify as an "accredited university or academic research institution" under the eligibility criteria of this grant?_<br>
A: For the purposes of this grant, we consider any officially-recognized non-profit academic institution with faculty to be an "accredited university or academic research institution," and therefore eligible to be a lead institution on a proposal. If you’re unsure as to whether your institution qualifies under these criteria, feel free to email us at <grants@climatechange.ai>.

_Q: I am from a US national lab. Does this count as an eligible "academic research institution"?_<br>
A: US national labs and federally funded research and development centers (FFRDCs) are unfortunately not eligible to be the lead institution on a proposal.

_Q: I am from an eligible “accredited university or academic research institution” as defined above and hold a post-PhD research position at that institution, but am not technically considered either a postdoc or faculty member. Am I eligible to be a PI?_<br>
A: Yes. Anyone at an eligible lead institution as defined above who holds a post-PhD research position of postdoctoral level or above, and is allowed by their institution to hold grants, is eligible to apply as a PI.

## Sponsors

### Supported By

<!-- <div class='logo-wrapper'>
  <img src='/images/innovation_grants_partners_logo.png'>
</div> -->

<!-- ### Fiscal Sponsor

<div class='logo-wrapper'>
  <img src='/images/future_earth.png'>
</div>
 -->
<style>
:root {
  --sticky-nav-height: 59px;
}

.logo-wrapper img {
    width: 24rem;
    max-width: 100%;
    margin: 0 auto;
    display: block;
}

@media screen and (min-width: 651px) {
  #sticky-nav {
    position: -webkit-sticky;
    position: sticky;
    background: white;
    width: 100%;
    z-index: 1;
    padding-top: 10px;
    padding-bottom: 5px;
  }
}

@media screen and (min-width: 1024px) {
  #sticky-nav {
    top: var(--navbar-height-normal);
  }

  h1, h2, h3 {
    scroll-margin-top: calc(var(--navbar-height-normal) + var(--sticky-nav-height));
    scroll-snap-margin-top: calc(var(--navbar-height-normal) + var(--sticky-nav-height));
  }
}

@media screen and (min-width: 651px) and (max-width: 1023px) {
  #sticky-nav {
    top: var(--navbar-height-mobile);
  }

  h1, h2, h3 {
    scroll-margin-top: calc(var(--navbar-height-mobile) + var(--sticky-nav-height));
    scroll-snap-margin-top: calc(var(--navbar-height-mobile) + var(--sticky-nav-height));
  }
}
</style>

<script>
$(document).ready(() => {
  const $stickyNav = $('#sticky-nav');

  $('#content h2').each((i, h2) => {
    $stickyNav.append(`<a class='button' href="#${h2.id}">${h2.innerText}</a>`);
  });

  document.documentElement.style.setProperty('--sticky-nav-height', `${$stickyNav.outerHeight()}px`);

  $(window).on("resize orientationchange", () => {
    document.documentElement.style.setProperty('--sticky-nav-height', `${$stickyNav.outerHeight()}px`);
  });

  // Fix an issue where the sticky nav covers the <h> element when visiting the
  // anchor link directly from a URL
  if ($(location.hash).length) {
    setTimeout(() => {
      $(location.hash)[0].scrollIntoView();
    }, 1);
  }
});
</script>
