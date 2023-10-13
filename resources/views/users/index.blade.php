<x-layout>
    
    <x-page-header :heading_label="'l_all_users_heading'"></x-page-header> 

    @unless (count($all_users) == 0)
        @foreach ($all_users as $key => $row)
        
            <x-listing-card-user :row="$row" :rowNumber="$all_users->firstItem() + $key">

                
            </x-listing-card-user>
        @endforeach
    @else
        <x-no-results></x-no-results>

    @endunless

    <div class="mt-6 p-4 mx-24">
        {{ $all_users->links() }}
    </div>

</x-layout>