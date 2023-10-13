<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="images/favicon.ico" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="//unpkg.com/alpinejs" defer></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        laravel: '#ef3b2d',
                    },
                },
            },
        }
    </script>
    <title>PIXELS - Share images with friends</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">


</head>

<body class="mb-48">

        {{-- navigation --}}
        @include('partials._nav')

        <main>
            {{ $slot }}
        </main>

        <footer
            class="fixed bottom-0 left-0 w-full flex items-center justify-start font-bold bg-laravel text-white h-16 mt-24 opacity-90 md:justify-center main-gradient">
            <p class="ml-2">{{ config('app.name') }} &copy; | {{ date('Y') }} |
                {{ __('labels.l_all_rights_reserved') }} | {{ __('labels.l_author') }}</p>

            <a href="{{ route('images_create_form_url') }}" class="absolute rounded right-10 bg-black text-white py-2 px-5" style="background: #431571;
                box-shadow: 0px 0px 10px white;">{{ __('labels.l_post_picture') }}</a>
        </footer>

        <x-flash-message />

        <script src="{{ asset('js/app.js') }}"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
    </body>

    </html>
