<x-layout>

    <div class="mx-4">
        <x-card class="p-10 rounded mt-10">
            <header>
                <h1 class="text-3xl text-center font-bold my-6 uppercase">
                    {{ __('labels.l_manage_images') }}
                </h1>
            </header>

            <table class="w-full table-auto rounded-sm">
                <tbody>
                @unless($userCreatedImages->isEmpty())
                    @foreach ( $userCreatedImages as $key => $row)
                                            
                    
                        <tr class="border-gray-300">
                            <td class="px-4 py-8 border-t border-b border-gray-300 text-lg" style="color: #B24592;font-weight: bold;">
                                <a href="{{ route('user_image_edit_form_url', ['user_image' => $row->id ] ) }}">#{{ $userCreatedImages->firstItem() + $key }}</a></td>
                            <td class="px-4 py-8 border-t border-b border-gray-300 text-lg">
                                <a href="{{ route('show_single_image_url', ['user_image' => $row->id]) }}"
                                    title="{{ __('labels.l_click_to_view_image_title') }}"
                                    >
                                    {{ empty($row->title) ? __('labels.l_image_title_default') : $row->title }}
                                </a>
                            </td>
                            <td class="px-4 py-8 border-t border-b border-gray-300 text-lg">
                                <a href="{{ route('show_single_image_url', ['user_image' => $row->id]) }}">
                                    <img
                                        class="md:block rounded-3xl w-16 hover:bg-neutral-100 group-hover:opacity-50"
                                        src="{{ $row->img_url ? ( strpos($row->img_url, 'http') !== false ? $row->img_url : asset('storage/' . $row->img_url) ) : asset('images/app_logo.png') }}"
                                        alt="{{ empty($row->alt) ? __('labels.alt_default') : $row->alt }}"
                                        title="{{ __('labels.l_click_to_view_image_title') }}"
                                        loading="lazy"
                                    />
                                </a>
                            </td>
                            <td class="px-4 py-8 border-t border-b border-gray-300 text-lg">
                                <a href="{{ route('user_image_edit_form_url', ['user_image' => $row->id ] ) }}" class="text-blue-400 px-6 py-2 rounded-xl"><i
                                        class="fa-solid fa-pen-to-square"></i>
                                        {{ __('labels.l_edit') }}</a>
                            </td>
                            <td class="px-4 py-8 border-t border-b border-gray-300 text-lg">
                                <form method="post" action="{{ route('delete_user_image_url', ['user_image' => $row->id]) }}">
                                    @csrf
                                    @method('delete')
                                    
                                    <button class="text-red-600">
                                        <i class="fa-solid fa-trash-can"></i>
                                        {{ __('labels.l_delete') }}
                                    </button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                @else 
                        <x-no-results></x-no-results>
                @endunless
                </tbody>
            </table>
      
            
    </x-card>

    <div class="mt-6 p-4 mx-24">
        {{ $userCreatedImages->links() }}
    </div>

</div>

</x-layout>
