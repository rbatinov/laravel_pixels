<?php

namespace App\Http\Requests;

use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class StoreContactMessageRequest extends FormRequest
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
        $regexText = "/^[a-zA-Zа-яА-Я0-9,.|\-_?!@#$%&*()+ ]+$/u";

        return [
            
            'name' => ['min:3', 'max:255', 'regex:' . $regexUserName],
            'email' => ['required', 'email:rfc,dns', 'min:3', 'max:255'], 
            'dsc' => ['required', 'min:1', 'regex:' . $regexText]

                
        ];
    }

    public function messages()
    {
        return [
            'title.regex' => 'You must type only letters.',
            'description.regex' => 'Tags must be separated with no space.'

        ];
    }

}
