<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class UserRequest extends Request
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'name'              =>  'required|min:3|max:80',
            'email'             =>  'required|unique:users',
            'password'          =>  'required|min:4|max:120',
        ];
    }
}
