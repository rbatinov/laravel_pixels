<x-layout>

    <x-back-button :routeName="'home_url'"></x-back-button>

    <x-card class="mt-10 x-card">

        <div class="flex flex-col items-center justify-center text-center">
            <img
            class="w-1/3 rounded-lg"
                src="{{ $userImage->img_url ? ( strpos($userImage->img_url, 'http') !== false ? $userImage->img_url : asset('storage/' . $userImage->img_url) ) : asset('images/app_logo.png') }}"
                alt="{{ empty($userImage->alt) ? __('labels.alt_default') : $userImage->alt }}" 
                title="{{ empty($userImage->title) ? __('labels.l_image_title_default') : $userImage->title }}"
                />
                
            <p><span class="text-deep-purple">Title:</span> {{ empty($userImage->title) ? __('labels.l_image_title_default') : $userImage->title }}</p>
            <p><span class="text-deep-purple">Author:</span> 
                <a href="{{ route('user_profile_url', ['user' => $author_id ] ) }}"
                    title="{{ __('labels.l_click_to_view_title') }}">{{ $author }}</a>
                </p>
            <p><span class="text-deep-purple">Uploaded at:</span> {{ $userImage->created_at }}</p>

            <a href="{{ $userImage->img_url ? ( strpos($userImage->img_url, 'http') !== false ? $userImage->img_url : asset('storage/' . $userImage->img_url) ) : asset('images/app_logo.png') }}"
                target="_blank"
                class="btn-gradient mt-4"
                >View FullScreen</a>
        </div>

        
    </x-card>

        @include('partials._form_comments', 
                [
                    'user_image_id' => $userImage->id,
                    'pictureComments' => $pictureComments
                ]
                )
                
    @auth
        

        @if ($userImage->user_id == auth()->user()->id)
            <x-card class="mt-4 p-2 flex space-x-6">
                <a href="{{ route('user_image_edit_form_url', ['user_image' => $userImage->id]) }}"><i
                        class="fa-solid fa-pencil"></i> {{ __('labels.l_edit') }}</a>

                <form method="post" action="{{ route('delete_user_image_url', ['user_image' => $userImage]) }}">
                    @csrf
                    @method('delete')
                    <button class="text-dash-red-500"><i class="fa-solid fa-trash"></i>{{ __('labels.l_delete') }}</button>
                </form>
            </x-card>
        @endif
    @endauth

    @can('Admin')
        <x-card>
            <form method="post" action="{{ route('delete_user_image_url', ['user_image' => $userImage]) }}">
                @csrf
                @method('delete')
                <button class="text-dash-red-500"><i class="fa-solid fa-trash"></i>{{ __('labels.l_delete') }}</button>
            </form>
        </x-card>
    @endcan

</x-layout>
