@props(['row', 'rowNumber'])

<x-card>
    <div class="flex">
        <div 
        style="    text-align: center;
        margin-top: auto;
        margin-bottom: auto;
        font-size: 1.7rem;
        padding-right: 1rem;
        word-break: normal; width:5%;"
        
        title="{{ __('labels.l_click_to_view_image_title') }}"
        >
            <a href="{{ route('show_single_image_url', ['user_image' => $row->id ] ) }}
                " style="color: #B24592; font-weight:bold;">#{{ $rowNumber }}</a>
        </div>

        <div class="my-auto" style="width:25%;" >
            <a 
                href="{{ route('show_single_image_url', ['user_image' => $row->id ] ) }} " 
                
                >
                <img
                    class="hidden w-64 mr-6 md:block p-10  sm:p-3 rounded-3xl"
                    src="{{ $row->img_url ? ( strpos($row->img_url, 'http') !== false ? $row->img_url : asset('storage/' . $row->img_url) ) : asset('images/app_logo.png') }}"
                    alt="{{ empty($row->alt) ? __('labels.alt_default') : $row->alt }}"
                    title="{{ __('labels.l_click_to_view_image_title') }}"
                />
            </a>
        </div>

        <div style="width:70%">
            
            
                <h3 class="text-xl">
                    <a href="{{ route('show_single_image_url', ['user_image' => $row->id]) }}"
                        title="{{ __('labels.l_click_to_view_title') }}">{{ $row['img_url'] }}</a>
                </h3>

                
                <div class="text-xl font-bold mb-2 mt-2">
                    <p> <span class="text-deep-purple">{{ __('labels.l_image_published_date') }} </span> {{ $row->created_at }}</p>
                    <p> <span class="text-deep-purple">{{ __('labels.l_user') }} </span> {{ $row->user_id }}</p>
                </div>
        </div>

        
    </div>
</x-card>