<x-layout>

    <x-page-header :heading_label="'l_all_pictures_heading'"></x-page-header> 

    <x-grid-picture>
        @unless (count($user_images) == 0)
            @foreach ($user_images as $key => $user_image)
                <x-listing-image :row="$user_image" :rowNumber="$user_images->firstItem() + $key">

                </x-listing-image>
            @endforeach
        @else
            <x-no-results></x-no-results>

        @endunless
    </x-grid-picture>

    <div class="mt-6 p-4 mx-24">
        {{ $user_images->links() }}
    </div>


</x-layout>
