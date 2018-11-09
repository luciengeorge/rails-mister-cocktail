import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Need a drink?", "We got your back"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
