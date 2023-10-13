<x-layout>
    <div class="mx-4">
        <x-card class="max-w-lg mx-auto mt-24"
            style="margin-left:auto; margin-right:auto; box-shadow: 0px 0px 3px gray; box-shadow: 0px 0px 5px #8e0393;
            background: #8e039308; word-break:break-word;">
            <header class="text-center">
                <h2 class="text-2xl font-bold uppercase mb-1">
                    {{ __('labels.l_contact_heading') }}
                </h2>
                <p class="mb-4">{{ __('labels.l_contact_subheading') }}</p>
            </header>

            <form method="post" action="{{ route('contact_form_send_url') }}">
                @csrf

                @auth
                    <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">    
                @else
                    <input type="hidden" name="user_id" value="0">
                @endauth
                    

                @auth
                    
                @else
                
                    <div class="mb-6">
                        <label for="name" class="inline-block text-lg mb-2">
                            {{ __('labels.l_name') }}
                        </label>
                        <input type="text" class="border border-gray-200 rounded p-2 w-full" name="name"
                            value="{{ old('name') }}" />

                        @error('name')
                            <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                        @enderror
                    </div>
                @endauth

                    <div class="mb-6">
                        <label for="email" class="inline-block text-lg mb-2">{{ __('labels.l_email') }}</label>
                        <input type="email" class="border border-gray-200 rounded p-2 w-full" name="email"
                            value="{{ old('email') }}" />

                        @error('email')
                            <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                        @enderror
                    </div>
               

                <div class="mb-6">
                    <label for="dsc" class="inline-block text-lg mb-2">
                        {{ __('labels.l_contact_message') }}
                    </label>
                    <textarea class="border border-gray-200 rounded p-2 w-full" name="dsc" rows="10"
                        placeholder="Include tasks, requirements, salary, etc">
                        {{ old('dsc') }}
                    </textarea>
                </div>

                @error('dsc')
                    <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                @enderror



                <div class="mb-6 text-center">
                    <button type="submit" class="text-white py-2 px-4 btn-gradient">
                        {{ __('labels.l_contact_send_btn') }}
                    </button>
                </div>

            </form>
        </x-card>
    </div>
</x-layout>
