<x-layout>
    <x-page-header :heading_label="'l_admin_dashboard_heading'"></x-page-header> 
    

    <div class="grid grid-cols-1 gap-4 xl:grid-cols-1 
                    lg:grid-cols-1 md:grid-cols-1 sm:grid-cols-1 
                    sm:mx-1 md:mx-14 max-[640px]:grid-cols-1
                    text-center
                    "
                    >
    
                    <x-card class="mb-8 border border-solid rounded-xl p-8">
                        <h1 class="text-deep-purple text-3xl">{{ __('labels.l_admin_dashboard_latest_users') }}</h1>

                        <hr style="width:50%; margin-left:auto; margin-right:auto;">

                        <div class="grid grid-cols-3 gap-4 xl:grid-cols:-3
                                    lg:grid-cols-3 md:grid-cols-3 sm:grid-cols-1
                                    max-[640px]:grid-cols-1
                                    text-center
                                    mt-8
                        ">
                            
                            <div class="text-deep-purple text-xl font-black">name</div>
                            <div class="text-deep-purple text-xl font-black">Registered Date</div>
                            <div class="text-deep-purple text-xl font-black">Uploaded Images</div>
                            
                            @foreach ($last_registered_users as $row)
                                    <div class="border-b border-solid">
                                        <a href="{{ route('user_profile_url', ['user' => $row ] ) }}"
                                            title="{{ __('labels.l_click_to_view_title') }}">{{ $row['name'] }}
                                        </a>
                                    </div>
                                    <div class="border-b border-solid">{{ $row->created_at }}</div>
                                    <div class="border-b border-solid">{{ $row->countUploadedImages }}</div>
                            @endforeach
                        </div>
                    </x-card>

                    <x-card class="mb-8 border border-solid rounded-xl p-8">
                        <h1 class="text-deep-purple text-3xl">{{ __('labels.l_admin_dashboard_latest_pictures') }}</h1>

                        <hr style="width:50%; margin-left:auto; margin-right:auto;">

                        <div class="mt-4"></div>

                        <x-grid-picture>
                            @foreach ($latest_images as $key => $row)
                                <x-listing-image :row="$row" :rowNumber="$key">

                                </x-listing-image>
                                
                            @endforeach
                        </x-grid-picture>
                    </x-card>
    </div>
</x-layout>