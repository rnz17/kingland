import defaultTheme from 'tailwindcss/defaultTheme';
import forms from '@tailwindcss/forms';

/** @type {import('tailwindcss').Config} */
export default {
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
    ],

    theme: {
        extend: {
            fontFamily: {
                sans: ['DMSans', ...defaultTheme.fontFamily.sans],
                faustina: ['Faustina', ...defaultTheme.fontFamily.serif],
            },
            colors: {
                darkblue: '#000099',
                blue: '#0000FF',
                cyan: '#00FFFF',
                darkcyan: '#00CCCC',
                gray: '#4D4D4D',
                black: '#000000',
            },
        },
    },

    plugins: [forms],
};
