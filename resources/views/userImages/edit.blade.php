<x-layout>
    <div class="mx-4">
        <x-card class="p-10 rounded max-w-lg mx-auto mt-24" style="margin-left:auto; margin-right:auto; box-shadow: 0px 0px 3px gray; box-shadow: 0px 0px 5px #8e0393;
        background: #8e039308; word-break:break-word;"

        >
            <header class="text-center">
                <h2 class="text-2xl font-bold uppercase mb-1">
                    {{ __('labels.l_edit_image_header') }}
                </h2>
                <p class="mb-4">{{ __('labels.l_edit_image_subheader') }} <span style="color: #B24592;">{{ empty($userImage->title) ? __('labels.l_image_title_default') : $userImage->title }}</span></p>
            </header>

            <form method="POST" action="{{ route('update_picture_url', ['user_image' => $userImage->id ]) }}" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <input type="hidden" name="user_image_id" value="{{ $userImage->id }}">
                
                <div class="mt-6">
                    <label for="title" class="inline-block text-lg mb-2">{{ __('labels.l_image_create_title') }}</label>
                    <input type="text" class="border border-gray-200 rounded p-2 w-full" name="title"
                        placeholder="{{ __('labels.l_image_create_title_placeholder') }}" value="{{ $userImage->title }}"/>
                </div>

                @error('title')
                    <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                @enderror

                <div class="mt-6">
                    <label for="alt" class="inline-block text-lg mb-2">{{ __('labels.l_image_create_alt') }}</label>
                    <input type="text" class="border border-gray-200 rounded p-2 w-full" name="alt"
                        placeholder="{{ __('labels.l_image_create_alt_placeholder') }}" value="{{ $userImage->alt }}"/>
                </div>

                @error('alt')
                    <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                @enderror

                <div class="mt-6">

                    <img class="w-48 mr-6 mb-6 ml-auto mr-auto mt-4"
                        src="{{ $userImage->img_url ? ( strpos($userImage->img_url, 'http') !== false ? $userImage->img_url : asset('storage/' . $userImage->img_url) ) : asset('images/app_logo.png') }}" 
                        alt="{{ empty($userImage->alt) ? __('labels.alt_default') : $userImage->alt }}"
                        title="{{ empty($userImage->title) ? __('labels.l_image_title_default') : $userImage->title }}"
                        />

                </div>

                @error('img_url')
                    <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                @enderror

                <div class="mb-6 text-center">
                    <button class="text-white py-2 px-4 hover:bg-black text-lg btn-gradient">
                        {{ __('labels.l_image_update_btn') }}
                    </button>

                    <a href="{{ route('home_url') }}" class="text-black ml-4">
                        {{ __('labels.l_back') }}
                    </a>
                </div>
            </form>
        </x-card>
    </div>
</x-layout>
