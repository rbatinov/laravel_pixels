
<x-layout>
    

    <div class="mx-auto">
        <x-card class="p-10 rounded max-w-lg mx-auto mt-24" style="margin-left:auto; margin-right:auto;">
            <header class="text-center">
                <h2 class="text-2xl font-bold uppercase mb-1">
                    {{ __('labels.l_image_create_header') }}
                </h2>
                <p class="mb-4">{{ __('labels.l_image_create_subheader') }}</p>
                <p class="mb-4">{{ __('labels.l_picture_max_upload_message', ['value' => config('app.max_picture_uploads')]) }}</p>
            </header>

            <form method="POST" action="{{ route('store_image_url') }}" enctype="multipart/form-data">
                @csrf

                <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">

                <div class="mt-6">
                    <label for="title" class="inline-block text-lg mb-2">{{ __('labels.l_image_create_title') }}</label>
                    <input type="text" class="border border-gray-200 rounded p-2 w-full" name="title"
                        placeholder="{{ __('labels.l_image_create_title_placeholder') }}" value="{{ old('title') }}"/>
                </div>

                @error('title')
                    <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                @enderror

                <div class="mt-6">
                    <label for="alt" class="inline-block text-lg mb-2">{{ __('labels.l_image_create_alt') }}</label>
                    <input type="text" class="border border-gray-200 rounded p-2 w-full" name="alt"
                        placeholder="{{ __('labels.l_image_create_alt_placeholder') }}" value="{{ old('alt') }}"/>
                </div>

                @error('alt')
                    <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                @enderror

                <div class="mt-6">
                    <label for="img_url" class="inline-block text-lg mb-2">
                        {{ __('labels.l_image_create_picture') }}
                    </label>
                    <input type="file" class="border border-gray-200 rounded p-2 w-full" name="img_url" />
                    <p>{{ __('labels.l_image_create_picture_subheading') }}</p>
                </div>

                @error('img_url')
                    <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                @enderror

                <div class="mt-6 text-center">
                    <button class="text-white btn-gradient">
                        {{ __('labels.l_image_create_btn') }}
                    </button>

                    <a href="{{ route('home_url') }}" class="text-black ml-4"> {{ __('labels.l_back') }} </a>
                </div>
            </form>
        </x-card>
    </div>


</x-layout>
