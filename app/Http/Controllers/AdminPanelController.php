<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Comments;
use App\Models\UserImages;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AdminPanelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function dashboard(){

        $last_registered_users = User::latest('id', 'desc')->take(5)->get();
        $latest_images = UserImages::latest('id', 'desc')->take(5)->get();
        
        foreach($last_registered_users as $row){
            $count = count(UserImages::select('user_id')->where('user_id', '=', $row->id)->get());
            $row->countUploadedImages = $count; 
        }

        foreach($latest_images as $row){
            $user = User::where('id', '=', $row->user_id)->get();
            $row->user_name = $user[0]->name; 
        }


        return view('admin.dashboard', [
            'last_registered_users' => $last_registered_users,
            'latest_images' => $latest_images
        ]);
    }

    public function destroy_comment(Comments $commentInfo){
        if(auth()->user()->user_type_id == config('app.default_admin_type_id')){
            Comments::where('id', '=', $commentInfo->id)->delete();

            return redirect()->back()
                ->with('message', __('labels.l_deleted_success'));
        }
    }

    public function destroy_user(User $userInfo){
        if(auth()->user()->user_type_id == config('app.default_admin_type_id')){
            
            // delete all uploaded images from the user
            $userImageAll = UserImages::where('user_id', '=', $userInfo->id)->get();

            foreach($userImageAll as $row){
                if(Storage::disk('public')->exists($row->img_url)){
                    Storage::disk('public')->delete($row->img_url);
                }

                $row->delete();
            }

            // delete all comments from the user
            Comments::where('user_id', '=', $userInfo->id)->delete();

            // delete the user
            $userInfo->delete();

            return redirect()->back()
                ->with('message', __('labels.l_deleted_success'));
        }
    }

    
}
