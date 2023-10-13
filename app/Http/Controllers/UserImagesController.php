<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Comments;
use App\Models\UserImages;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Http\Requests\StoreImageRequest;
use App\Http\Requests\UpdateImageRequest;


class UserImagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $latest = UserImages::latest('id', 'desc')->take(config('app.rows_per_page'))->get();
        
        foreach($latest as $row){
            $user = User::where('id', '=', $row->user_id)->get();
            $row->user_name = $user[0]->name; 
        }

        return view('userImages.index', [
            'user_images' => $latest
        ]);
    }

    public function all()
    {
        $latest = UserImages::latest('id', 'desc')->paginate(config('app.rows_per_page'));
        
        foreach($latest as $row){
            $user = User::where('id', '=', $row->user_id)->get();
            $row->user_name = $user[0]->name; 
        }

        return view('userImages.all', [
            'user_images' => $latest
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('userImages.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreImageRequest $request)
    {
        $formFields = $request->validated();

        $row = UserImages::select('*')
            ->where('user_id', '=', $formFields['user_id'])->get();
        
        if( count($row) >= config('app.max_picture_uploads')){
            return redirect()->back()
                ->with('message', __('labels.l_picture_max_comments'));
        }

        if($request->hasFile('img_url')){
            $formFields['img_url'] = $request->file('img_url')->store('user_pictures', 'public');
        }

        UserImages::create($formFields);

        return redirect(route('home_url'))
            ->with('message', __('labels.l_image_created_success'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\UserImages  $userImage
     * @return \Illuminate\Http\Response
     */
    public function show(UserImages $userImage)
    {
        $pictureComments = Comments::
            join('users', 'users.id', 'comments.user_id')
            ->select('comments.id', 
                    'comments.user_image_id', 
                    'comments.dsc', 
                    'comments.user_id', 
                    'comments.created_at', 
                    'users.name')
            ->where('user_image_id', '=', $userImage->id)->latest('comments.id', 'desc')->get();

           
        $author = UserImages::join('users', 'users.id', 'user_images.user_id')
            ->select('users.name')
            ->where('user_images.id', '=', $userImage->id)->get();

            
            
        if($userImage){
            return view('userImages.show', [
                'userImage' => $userImage, 
                'pictureComments' => $pictureComments,
                'author' => $author[0]->name, 
                'author_id' => $userImage->user_id
            ]);
        }
        else{
            // abort('404', 'No such job post');
            return 'No such image';
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\UserImages  $userImages
     * @return \Illuminate\Http\Response
     */
    public function edit(UserImages $userImage)
    {
        // Make sure user is owner
        if($userImage->user_id != auth()->user()->id){
            return redirect(route('home_url'))->with('message', __('locals.l_authentication_image'));
        }

        if($userImage){
            return view('userImages.edit', [
                'userImage' => $userImage       
            ]);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\UserImages  $userImages
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateImageRequest $request, UserImages $userImage)
    {
        // Make sure user is owner
        if($userImage->user_id != auth()->user()->id){
            return redirect(route('home_url'))->with('message', __('locals.l_authentication_image'));
        }

        $formFields = $request->validated();

        $userImage->update($formFields);

        return redirect(route('home_url'))
            ->with('message', __('labels.l_image_updated_success'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\UserImages  $userImages
     * @return \Illuminate\Http\Response
     */
    public function destroy(UserImages $userImage)
    {
        // check for admin
        if(auth()->user()->user_type_id == config('app.default_admin_type_id')){
            if(Storage::disk('public')->exists($userImage->img_url)){
                Storage::disk('public')->delete($userImage->img_url);
            }
    
            $userImage->delete();

            Comments::where('user_image_id', $userImage->id)->delete();
    
            return redirect(route('home_url'))
                ->with('message', __('labels.l_deleted_success'));
        }

        // Make sure user is owner if we do not have admin
        if($userImage->user_id != auth()->user()->id){
            return redirect(route('home_url'))->with('message', __('labels.l_authentication_image'));
        }
        
        if(Storage::disk('public')->exists($userImage->img_url)){
            Storage::disk('public')->delete($userImage->img_url);
        }

        $userImage->delete();

        Comments::where('user_image_id', $userImage->id)->delete();
        
        return redirect(route('home_url'))
            ->with('message', __('labels.l_deleted_success'));
    }

    public function manage()
    {
        return view('userImages.manage', 
            [
                'userCreatedImages' => UserImages::where('user_id', '=', auth()->user()->id)->paginate(config('app.rows_per_page'))
            ]
        );
    }
}
