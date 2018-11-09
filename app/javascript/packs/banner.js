import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Wanna go wild?"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
