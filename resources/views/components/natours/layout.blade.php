<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>V-projects - Natours</title>

        <link rel="stylesheet" type="text/css" href="{{ url('css/icon-font.css') }}">

        @livewireStyles
        @vite(['resources/css/natours/app.css', 'resources/scss/natours/main.scss', 'resources/js/app.js'])
    </head>
    <body>
        {{$slot}}
    </body>
</html>