<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Article;
use App\User;
use App\Category;
use Session;
use Redirect;

class ArticlesController extends Controller
{

    public function __construct(){
       $this->middleware('auth');
       $this->middleware('admin', ['only' =>['edit','update','destroy','create']]);
    }

    public function index()
    {
        $articles = Article::orderBy('id','DESC')->paginate(5);
        return view('admin.articles.index', compact('articles'));
    }

    public function create()
    {
        $categories = Category::lists('name','id');
        return view('admin.articles.create',compact('categories'));
    }

    public function store(Request $request)
    {
       $article = new Article($request->all());

        $article->save();
        Session::flash('message','Artigo criado com sucesso!');
        return redirect::to('admin/articles');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
         $users = User::lists('name', 'id');
         $categories =Category::lists('name', 'id');

         $article = Article::find($id);
         return view('admin.articles.edit',compact('users','categories','article'));
    }

    public function update(Request $request, $id)
    {
        $article = Article::find($id);
        $article->  fill($request->all());

        $article->resluggify();

        $article->save();
        Session::flash('message','Artigo editado com sucesso!');
        return redirect::to('admin/articles') ;
    }

    public function destroy($id)
    {
         Article::destroy($id);
         Session::flash('message','Artigo eliminado com sucesso!');
         return redirect::to('admin/articles') ;
    }
}
