@props(['row', 'rowNumber'])

<div class="mx-auto my-auto pt-2 pb-2 relative group max-[400px]:mx-4">
    <a 
                href="{{ route('show_single_image_url', ['user_image' => $row->id ] ) }} " 
                >
                <img
                    class="w-64 md:block rounded-3xl max-[640px]:w-96 sm:w-80 hover:bg-neutral-100 group-hover:opacity-50"
                    src="{{ $row->img_url ? ( strpos($row->img_url, 'http') !== false ? $row->img_url : asset('storage/' . $row->img_url) ) : asset('images/app_logo.png') }}"
                    alt="{{ empty($row->alt) ? __('labels.alt_default') : $row->alt }}"
                    title="{{ __('labels.l_click_to_view_image_title') }}"
                    loading="lazy"
                />
            </a>

            <div 
                class="opacity-0 
                    group-hover:opacity-100 
                    duration-300 
                    absolute 
                    inset-x-0 
                    inset-y-1/2
                    flex 
                    justify-center 
                    items-end 
                    text-xl 
                    bg-gray-200 
                    text-black 
                    font-semibold 
                    rounded-b-xl">
                    
                    <a href="{{ route('show_single_image_url', ['user_image' => $row->id ] ) }} "
                        title="{{ __('labels.l_click_to_view_image_title') }}"
                        >
                        {{ __('labels.l_click_to_view_image_title') }}
                    </a>
                </div>

            <p class="text-center"> <span class="text-2xl text-deep-purple">{{ empty($row->title) ? __('labels.l_image_title_default') : $row->title }}</p>
            <p class="text-center"> <span class="text-deep-purple font-black">{{ __('labels.l_image_published_date') }} </span> {{ $row->created_at }}</p>
            <p class="text-center"> 
                <span class="text-deep-purple font-black">{{ __('labels.l_user') }} </span> 
                <a href="{{ route('user_profile_url', ['user' => $row->user_id ] ) }}"
                    title="{{ __('labels.l_click_to_view_title') }}">{{ $row->user_name }}</a>
            </p>
        
        </div>

        
        