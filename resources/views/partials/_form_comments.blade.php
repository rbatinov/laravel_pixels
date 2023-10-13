<x-card class="mt-4 p-2 space-x-6">

    <div class="text-center">
        <h1 class="text-center text-3xl text-deep-purple">{{ __('labels.l_picture_comments_header') }}</h1>
    </div>


    @unless (count($pictureComments) == 0)
        <div class="mt-8">
            @foreach ($pictureComments as $key => $row)
                <div class="flex p-4 hover:bg-pink-100 rounded-md">
                    <div class="text-deep-purple"
                        style="width:5%; display:inline-block; text-align: center;
                    margin-top: auto;
                    margin-bottom: auto;
                    font-size: 1.5rem;
                    padding-right: 1rem;
                    word-break: normal;
                    ">
                        #{{ $key + 1 }}
                    </div>
                    <div style="width:90%; display:inline-block;">
                        <p class="text-deep-purple text-2xl">{{ $row->dsc }}</p>
                        <p> <span class="text-deep-purple">{{ __('labels.l_image_published_date') }} </span>
                            {{ $row->created_at }}</p>
                        <p> <span class="text-deep-purple">{{ __('labels.l_image_comment_author') }} </span>
                            {{ $row->name }}</p>
                        
                        @can('Admin')
                            <form method="post" action="{{ route('admin_dashboard_destroy_comment_url', ['commentInfo' => $row->id]) }}">
                                @csrf
                                @method('delete')
                                <button class="text-dash-red-500 btn-gradient mt-4 mb-4"><i class="fa-solid fa-trash"></i>{{ __('labels.l_delete') }}</button>
                            </form>
                        @endcan

                        <hr>
                    </div>
                </div>
            @endforeach
        </div>
    @else
        <x-no-results></x-no-results>
    @endunless

    @auth
        <div class="text-center mt-8">
            <h1 class="text-center text-3xl text-deep-purple">{{ __('labels.l_picture_comments_post') }}</h1>
        </div>

        <form method="post" action="{{ route('create_new_comment_url') }}">
            @csrf

            <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">
            <input type="hidden" name="user_image_id" value="{{ $user_image_id }}">


            <div class="mb-6">
                <label for="dsc" class="inline-block text-lg mb-2">
                    {{ __('labels.l_picture_comments_dsc') }}
                </label>
                <textarea class="border border-gray-200 rounded p-2 w-full" name="dsc" rows="10"
                    placeholder="Type your comment...">
                    
                </textarea>
            </div>

            @error('dsc')
                <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
            @enderror

            <div class="mb-6 text-center">
                {{ __('labels.l_picture_comments_username') }} <span
                    class="text-deep-purple">{{ auth()->user()->name }}</span>
            </div>

            <div class="mb-6 text-center">


                <button class="text-white py-2 px-4 hover:bg-black text-lg btn-gradient">
                    {{ __('labels.l_picture_comments_btn') }}
                </button>
            </div>
        </form>
    @else
        <div class="mb-6 text-center">
            <a href="{{ route('register_form_url') }}"
                    class="inline-block border-2 border-white text-white py-2 px-4 rounded-xl uppercase mt-2 btn-gradient">
                    {{ __('labels.l_picture_comments_signup_btn') }}
            </a>
        </div>
    @endauth

</x-card>
