<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category;
use Session;
use Redirect;

class CategoriesController extends Controller
{

    public function __construct(){
       $this->middleware('auth');
       $this->middleware('admin', ['only' =>['edit','update','destroy','create']]);
    }

    public function index()
    {
       $categories = Category::orderBy('id','DESC')->paginate(5);
        return view('admin.categories.index', compact('categories'));
    }

    public function create()
    {
         return view('admin.categories.create');
    }

    public function store(Request $request)
    {
        $category = new Category($request->all());

        $category->save();
        Session::flash('message','Categoria criada com sucesso!');
        return redirect::to('admin/categories');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
       $category= Category::find($id);
       return view('admin.categories.edit',compact('category'));
    }

    public function update(Request $request, $id)
    {
         $category= Category::find($id);
         $category->fill($request->all());
         $category->save();

         Session::flash('message','Categoria atualizada com sucesso!');
        return redirect::to('admin/categories');

    }

    public function destroy($id)
    {
         $category= Category::find($id);
        $category->delete();

      Session::flash('message','Categoria eliminada com sucesso!');
        return redirect::to('admin/categories');
    }
}
