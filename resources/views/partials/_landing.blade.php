<section
    class="relative h-72 bg-laravel flex flex-col justify-center align-center text-center space-y-4 mb-4 main-gradient">
    <div class="absolute top-0 left-0 w-full h-full opacity-10 bg-no-repeat bg-center"></div>

    <div class="z-10">

        <hr style="width:30%; margin-left:auto; margin-right:auto; margin-top:10px;">

        <h1 class="lg:text-6xl md:text-5xl sm:text-4xl max-[640px]:text-4xl max-[320px]:text-xl font-bold uppercase text-white">
            <span style="text-transform:none;">{{ config('app.name') }}</span><span
                class="text-black" style="color: #431571; ">{{ __('labels.l_pictures') }}</span>
        </h1>
        <hr style="width:30%; margin-left:auto; margin-right:auto; margin-top:10px;">
        <p class="text-2xl text-gray-200 font-bold my-4">
            {{ __('labels.l_landing_subhead') }}
        </p>
        <div>
            @auth
                <a href="{{ route('images_create_form_url') }}"
                    class="inline-block border-2 border-white text-white py-2 px-4 rounded-xl uppercase mt-2 btn-dark-purple">{{ __('labels.l_post_picture') }}</a>
            @else
                <a href="{{ route('register_form_url') }}"
                    class="inline-block border-2 border-white text-white py-2 px-4 rounded-xl uppercase mt-2 btn-dark-purple">{{ __('labels.l_landing_btn') }}</a>
            @endauth
        </div>
    </div>
</section>
