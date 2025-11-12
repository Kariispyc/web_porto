import './bootstrap';
import AOS from 'aos';
import 'aos/dist/aos.css';
import Alpine from 'alpinejs';

window.Alpine = Alpine;

Alpine.start();

import './parallax.js';
AOS.init({
    duration: 1000,
    once: true,
});
