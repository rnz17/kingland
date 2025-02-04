import './bootstrap';

import Alpine from 'alpinejs';

window.Alpine = Alpine;

Alpine.start();



// Initialize TinyMCE
document.addEventListener('DOMContentLoaded', function () {
    tinymce.init({
        selector: '#content',
        plugins: 'lists link image code',
        toolbar: 'bold italic underline | bullist numlist | link image code',
        height: 300
    });
});
