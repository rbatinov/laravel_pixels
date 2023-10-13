<nav class="justify-between items-center nav-header bg-white border-gray-200 dark:bg-gray-900">
    <div class="flex flex-wrap items-center justify-between mx-auto pl-8 pr-8">
        <a href="{{ route('home_url') }}" title="{{ __('labels.l_homepage') }}" class="flex items-center">
            <img src="{{ asset('images/app_logo.png') }}" class="w-24 pt-2 pr-0 pb-0 pl-2 flip-image"
                alt="Flowbite Logo" />
            <span
                class="self-center text-2xl font-semibold whitespace-nowrap text-deep-purple">{{ config('app.name') }}</span>
        </a>

        <button data-collapse-toggle="navbar-default" type="button"
            class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
            aria-controls="navbar-default" aria-expanded="false">
            <span class="sr-only">Open main menu</span>
            <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                viewBox="0 0 17 14">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M1 1h15M1 7h15M1 13h15" />
            </svg>
        </button>

        <div class="hidden w-full md:block md:w-auto" id="navbar-default">

            <ul
                class="font-medium flex flex-col p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
                @auth
                        
                    <li>
                        @include('partials/_language_switcher')
                    </li>
                    <li>
                        @can('Admin')
                            <a href="{{ route('admin_dashboard_url') }}" class="hover:text-laravel">{{ __('labels.l_menu_admin_panel') }}</a>    
                        @endcan
                    </li>
                    <li>
                        <a href="{{ route('home_url') }}" class="hover:text-laravel">{{ __('labels.l_menu_home') }}</a>
                    </li>
                    <li>
                        <a href="{{ route('all_images_url') }}" class="hover:text-laravel">{{ __('labels.l_menu_pictures') }}</a>
                    </li>
                    <li>
                        <a href="{{ route('user_all_url') }}" class="hover:text-laravel">{{ __('labels.l_menu_users') }}</a>
                    </li>
                    <li>
                        @can('Admin')
                        
                        @else     
                            <a href="{{ route('contact_form_url') }}" class="hover:text-laravel">{{ __('labels.l_menu_contact') }}</a>    
                        @endcan
                        
                    </li>
                    <li>
                        |
                    </li>
                    <li class="max-[650px]:hidden">
                        <span class="font-bold uppercase" title="{{ __('labels.l_profile_username') }}">
                            <a href="{{ route('user_edit_url', ['user' => auth()->user() ]) }}">{{ auth()->user()->name }}
                            </a>
                        </span>
                    </li>
                    <li>
                        <a href="{{ route('manage_user_images_url') }}" class="hover:text-laravel"><i
                                class="fa-solid fa-gear"></i>
                            {{ __('labels.l_manage_images') }}</a>
                    </li>
                    <li>
                        <form class="inline" method="POST" action="{{ route('user_logout_url') }}">
                            @csrf

                            <button type="submit">
                                <i class="fa-solid fa-door-closed"></i> {{ __('labels.l_logout') }}
                            </button>
                        </form>

                    </li>
                @else
                    <li>
                        @include('partials/_language_switcher')
                    </li>
                    <li>
                        <a href="{{ route('home_url') }}" class="hover:text-laravel">{{ __('labels.l_menu_home') }}</a>
                    </li>
                    <li>
                        <a href="{{ route('all_images_url') }}" class="hover:text-laravel">{{ __('labels.l_menu_pictures') }}</a>
                    </li>
                    <li>
                        <a href="{{ route('user_all_url') }}" class="hover:text-laravel">{{ __('labels.l_menu_users') }}</a>
                    </li>
                    <li>
                        <a href="{{ route('contact_form_url') }}" class="hover:text-laravel">{{ __('labels.l_menu_contact') }}</a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="{{ route('register_form_url') }}" class="hover:text-laravel"><i
                                class="fa-solid fa-user-plus"></i> {{ __('labels.l_register') }}</a>
                    </li>
                    <li>
                        <a href="{{ route('login_form_url') }}" class="hover:text-laravel"><i
                                class="fa-solid fa-arrow-right-to-bracket"></i>
                            {{ __('labels.l_login') }}</a>
                    </li>
                @endauth
            </ul>
        </div>
    </div>
</nav>
