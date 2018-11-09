import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Need a drink?", "Select a cocktail from our list"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
