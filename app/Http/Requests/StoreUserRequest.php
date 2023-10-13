<?php

namespace App\Http\Requests;

use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class StoreUserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $regexUserName = "/^[a-zA-Zа-яА-Я0-9 ]+$/u";

        return [
            
            'name' => ['required', 'min:3', 'max:255', 'regex:' . $regexUserName],
            'email' => ['required', 'email:rfc,dns', 'min:3', 'max:255', Rule::unique('users', 'email')], 
            'password' => 'required|confirmed|min:6|max:255',             
                
        ];
    }

    public function messages()
    {
        return [
            'name.regex' => 'You must type only letters or numbers.',
            

        ];
    }

}
