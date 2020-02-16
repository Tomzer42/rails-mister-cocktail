import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["All the delicious cocktails !", "Need a fresh break ?"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
