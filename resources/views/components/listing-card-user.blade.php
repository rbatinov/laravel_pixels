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
            <a href="#"
                style="color: #B24592; font-weight:bold;">#{{ $rowNumber }}</a>
        </div>

        <div class="my-auto" style="width:15%;" >
            
        </div>

        <div style="width:70%">
            
            
                <h3 class="text-xl">
                    <a href="{{ route('user_profile_url', ['user' => $row ] ) }}"
                        title="{{ __('labels.l_click_to_view_title') }}">{{ $row['name'] }}</a>
                </h3>

                
                <p> <span class="font-black text-deep-purple">{{ __('labels.l_uploaded_images') }}</span>{{ $row->countUploadedImages }}</p>        
        </div>

        <div style="width:10%;">
            @can('Admin')
                <form method="post" action="{{ route('admin_dashboard_destroy_user_url', ['userInfo' => $row->id]) }}">
                    @csrf
                    @method('delete')
                    <button class="text-dash-red-500 btn-gradient mt-4 mb-4"><i class="fa-solid fa-trash"></i>{{ __('labels.l_delete') }}</button>
                </form>
            @endcan
        </div>



        
    </div>
</x-card>