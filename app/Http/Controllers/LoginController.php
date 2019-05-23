<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Session;
use Redirect;
use App\Http\Requests;
use App\Http\Requests\LoginRequest;
use App\Http\Controllers\Controller;

class LoginController extends Controller
{
    public function index()
    {
        return view('admin.login');
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
          if (Auth::attempt(['email'=>$request['email'], 'password'=>$request['password']])) {
            return Redirect::to('admin/index');
          }

        Session::flash('message','Dados inválidos!');
        return redirect::to('login');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }

    public function logout(){
        Auth::logout();
        return Redirect::to('/');
    }

}
