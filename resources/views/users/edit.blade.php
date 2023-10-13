<x-layout>
    <div class="mx-4">
        <x-card class="p-10 rounded max-w-lg mx-auto mt-24" style="margin-left:auto; margin-right:auto; box-shadow: 0px 0px 3px gray; box-shadow: 0px 0px 5px #8e0393;
        background: #8e039308; word-break:break-word;"

        >
            <header class="text-center">
                <h2 class="text-2xl font-bold uppercase mb-1">
                    {{ __('labels.l_edit_user_header') }}
                </h2>
                <p class="mb-4">{{ __('labels.l_edit_user_subheader') }} <span style="color: #B24592;">{{ $user->name }}</span></p>
            </header>

            <form method="POST" action="{{ route('user_update_url', ['user' => $user->id ]) }}" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <input type="hidden" name="user_id" value="{{ $user->id }}">
                
                <div class="mt-6">
                    <label for="name" class="inline-block text-lg mb-2">{{ __('labels.l_edit_user_name') }}</label>
                    <input type="text" class="border border-gray-200 rounded p-2 w-full" name="name"
                        placeholder="{{ __('labels.l_edit_user_name') }}" value="{{ $user->name }}"/>
                </div>

                @error('name')
                    <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                @enderror

                <div class="mb-2">

                </div>
                {{-- <div class="mb-6">
                    <label
                        for="password"
                        class="inline-block text-lg mb-2"
                    >
                        {{ __('labels.l_password') }}
                    </label>
                    <input
                        type="password"
                        class="border border-gray-200 rounded p-2 w-full"
                        name="password"
                    />

                    @error('password')
                        <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                    @enderror
                </div> --}}

                

                <div class="mb-6 text-center">
                    <button class="text-white py-2 px-4 hover:bg-black text-lg btn-gradient">
                        {{ __('labels.l_user_update_btn') }}
                    </button>

                    <a href="{{ route('home_url') }}" class="text-black ml-4">
                        {{ __('labels.l_back') }}
                    </a>
                </div>
            </form>
        </x-card>
    </div>
</x-layout>
