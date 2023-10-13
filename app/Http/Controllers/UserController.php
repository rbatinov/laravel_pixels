<?php

namespace App\Http\Controllers;

use UserImages;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;
use App\Models\UserImages as ModelsUserImages;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $all_users = User::select('users.id', 'users.name')
            ->leftJoin('user_images as ui', 'ui.user_id', 'users.id')
            ->orderByRaw('count(ui.id ) DESC')
            ->groupBy('users.id', 'users.name')
            ->paginate(config('app.rows_per_page'));
            
        foreach($all_users as $row){
            $count = count(ModelsUserImages::select('user_id')->where('user_id', '=', $row->id)->get());
            $row->countUploadedImages = $count; 
        }

        return view('users.index',
            [
                'all_users' => $all_users
            ]
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('users.register');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreUserRequest $request)
    {
        $formFields = $request->validated();

        // Hash Password 
        $formFields['password'] = bcrypt($formFields['password']);

        $user = User::create($formFields);

        // Login
        auth()->login($user);

        return redirect(route('home_url'))
            ->with('message', __('labels.l_user_created_success'));
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
    public function edit(User $user)
    {
        // Make sure user is owner
        if($user->id != auth()->user()->id){
            return redirect(route('home_url'))->with('message', __('locals.l_authentication_user'));
        }
        
        if($user){
            return view('users.edit', [
                'user' => $user       
            ]);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateUserRequest $request, User $user)
    {
        // Make sure user is owner
        if($user->id != auth()->user()->id){
            return redirect(route('home_url'))->with('message', __('locals.l_authentication_user'));
        }

        $formFields = $request->validated();
        $formFields['password'] = $request->route('user')->password;

        $user->update($formFields);

        return redirect(route('home_url'))
            ->with('message', __('labels.l_updated_success'));


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


    /**
     * Login Form
     *
     * @param  
     * @return \Illuminate\Http\Response
     */
    public function login()
    {
        return view('users.login');
    }

    public function authenticate(Request $request){
        $formFields = $request->validate([
            'email' => ['required', 'email', 'min:3', 'max:255'],
            'password' => 'required|min:6|max:255', 
        ]);

        if(auth()->attempt($formFields)){
            $request->session()->regenerate();

            return redirect(route('home_url'))
                ->with('message', __('labels.l_login_success'));
        }

        return back()->withErrors(['email' => __('labels.l_invalid_credentials')])->onlyInput();
    }

    public function logout(Request $request)
    {
        auth()->logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect(route('home_url'))
            ->with('message', __('labels.l_logout_success'));
    }

    public function user_profile(User $user){
        
        $userImages = ModelsUserImages::where('user_id', '=', $user->id)->paginate(config('app.rows_per_page'));
        
        return view('users.user', 
            [
                'user' => $user, 
                'userImages' => $userImages
            ]
        );
    }
}
