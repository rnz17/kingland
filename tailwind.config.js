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
                sans: ['Poppins', ...defaultTheme.fontFamily.sans],
                faustina: ['Faustina', ...defaultTheme.fontFamily.serif],
            },
            keyframes: {
                marquee: {
                  '0%': { transform: 'translateX(100%)' },
                  '100%': { transform: 'translateX(-100%)' },
                },
            },
            animation: {
                marquee: 'marquee 30s linear infinite', // Adjust the duration here for speed
            },
            colors: {
                notwhite: '#F2F2F2',
                lightblue: '#63a9e8',
                blue: '#17469d',
                darkblue: '#0f2f70',
                textblue: '#081b4d',
                tblue: 'rgba(23, 70, 157, 0.71)',
                tdblue: 'rgba(4, 4, 31, 0.93)',
                cyan: '#00FFFF',
                darkcyan: '#00CCCC',
                lightgray: '#656568',
                tlightgray: 'rgba(77, 77, 77, 0.5)',
                gray: '#353435',
                darkgray: '#3A3A3A',
                black: '#000000',
                tblack: 'rgba(0, 0, 0, 0.75)',
            },
            backgroundImage: {
                'sample1': "url('/images/kingland/sample1.jpg')",
                'sample2': "url('/images/kingland/sample2.jpg')",
                'sample3': "url('/images/kingland/sample3.jpg')",
            },
        },
    },

    plugins: [
        forms
    ],
};
