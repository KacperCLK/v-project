import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/app.css', 
                'resources/scss/app.scss', 
                'resources/js/app.js',
                'resources/css/natours/app.css',
                'resources/scss/natours/main.scss',
                'resources/css/nexter/app.css',
                'resources/scss/nexter/main.scss',
                'resources/css/trillo/app.css',
                'resources/scss/trillo/main.scss',
            ],
            refresh: true,
        }),
    ],
});
