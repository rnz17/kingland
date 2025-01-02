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
                tdblue: 'rgba(4, 4, 31, 0.93)',
                blue: '#0000FF',
                cyan: '#00FFFF',
                darkcyan: '#00CCCC',
                gray: '#4D4D4D',
                dadrkgray: '#3A3A3A',
                black: '#000000',
            },
            backgroundImage: {
                'sample1': "url('images/sample1.jpg')",
                'sample2': "url('images/sample2.jpg')",
                'sample3': "url('images/sample3.jpg')",
            },
        },
    },

    plugins: [forms],
};
