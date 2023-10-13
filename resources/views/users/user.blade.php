<x-layout>
    <x-page-header-value :value="__('labels.l_user_profile_heading') . $user->name"></x-page-header-value> 

    <x-grid-picture>
        @unless (count($userImages) == 0)
            @foreach ($userImages as $key => $user_image)
                <x-listing-image :row="$user_image" :rowNumber="$userImages->firstItem() + $key">

                </x-listing-image>
            @endforeach
        @else
            <x-no-results></x-no-results>

        @endunless
    </x-grid-picture>

    <div class="mt-6 p-4 mx-24">
        {{ $userImages->links() }}
    </div>

</x-layout>