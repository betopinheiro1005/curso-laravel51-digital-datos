<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\User;
use Session;
use Redirect;
use App\Http\Requests\UserRequest;


class UsersController extends Controller
{

    public function __construct(){
       $this->middleware('auth');
       $this->middleware('admin', ['only' =>['edit','update','destroy','create']]);
    }

    public function index()
    {
        $users = User::orderBy('id','DESC')->paginate(5);
        return view('admin.users.index', compact('users'));
    }

    public function create()
    {
        return view('admin.users.create');
    }

    public function store(UserRequest $request)
    {
        $user = new User($request->all());
        $user->password = bcrypt($request->password);
        $user->save();
        Session::flash('message','Usuario criado com sucesso!');
        return redirect::to('admin/users');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $user= User::find($id);
       return view('admin.users.edit',compact('user'));

    }

    public function update(Request $request, $id)
    {
         $user= User::find($id);
         $user->fill($request->all());
         $user->save();

         Session::flash('message','Usuário atualizado com sucesso!');
        return redirect::to('admin/users');
    }

    public function destroy($id)
    {
        $user= User::find($id);
        $user->delete();

        Session::flash('message','Usuário eliminado com sucesso!');
        return redirect::to('admin/users');
    }
}
