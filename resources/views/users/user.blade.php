<x-layout>
    <x-page-header-value :value="__('labels.l_user_profile_heading') . $user->name"></x-page-header-value> 

    <div class="text-center">
        @can('Admin')
            <form method="post" action="{{ route('admin_dashboard_destroy_user_url', ['userInfo' => $user->id]) }}">
                @csrf
                @method('delete')
                <button class="text-dash-red-500 btn-gradient mt-4 mb-4"><i class="fa-solid fa-trash"></i>{{ __('labels.l_delete') }}</button>
            </form>
        @endcan
    </div>

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