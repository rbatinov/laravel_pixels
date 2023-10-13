<x-layout>

    @include('partials._landing')

    <x-page-header :heading_label="'l_index_page_header'"></x-page-header>

    {{-- @unless (count($user_images) == 0)
        @foreach ($user_images as $key => $user_image)
            <x-listing-card :row="$user_image" :rowNumber="$key + 1">

            </x-listing-card>
        @endforeach
    @else
        <x-no-results></x-no-results>

    @endunless --}}

    <x-grid-picture>
        @unless (count($user_images) == 0)
            @foreach ($user_images as $key => $user_image)
                <x-listing-image :row="$user_image" :rowNumber="$key + 1">

                </x-listing-image>
            @endforeach
        @else
            <x-no-results></x-no-results>

        @endunless
    </x-grid-picture>

</x-layout>
