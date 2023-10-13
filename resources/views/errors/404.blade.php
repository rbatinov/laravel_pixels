<x-layout>
    <div class="main-gradient" style="height: 100vh;">
        <p class="text-white text-9xl text-center pt-12">404</p>
        <p class="text-white text-4xl text-center pt-12">{{ __('labels.l_404_subheading') }}</p>

        <div class="text-center mt-12 text-4xl text-black">
            <a class="text-center bg-white p-4 rounded-xl" 
                href="{{ route('home_url') }}"
                title="{{ __('labels.l_404_btn_title') }}"
                >
                
                {{ __('labels.l_menu_home') }}
                
            </a>
        </div>
    </div>
</x-layout>