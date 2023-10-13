<?php

namespace App\Http\Requests;

use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class StoreImageRequest extends FormRequest
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
        return [
            'img_url' => ['required', 'image' , 'max:2000'],
            'user_id' => ['required'], 
            'title' => 'max:255',
            'alt' => 'max:255'
        ];
    }

    public function messages(){
        return [
            'img_url.image' => 'The image needs to be in some of these formats: (jpg, jpeg, png, bmp, gif, svg, or webp)'
        ];
    }

}
