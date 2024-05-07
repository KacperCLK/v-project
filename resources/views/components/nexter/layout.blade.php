<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>V-projects - Nexter</title>

        <link rel="stylesheet" type="text/css" href="{{ url('css/icon-font.css') }}">

        @livewireStyles
        @vite(['resources/css/nexter/app.css', 'resources/scss/nexter/main.scss', 'resources/js/app.js'])
    </head>
    <body class="container">
        {{$slot}}
    </body>
</html>