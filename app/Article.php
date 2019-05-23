<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\SluggableInterface;
use Cviebrock\EloquentSluggable\SluggableTrait;

class Article extends Model implements SluggableInterface

{
    use SluggableTrait;

    protected $sluggable = [
        'build_from' => 'title',
        'save_to'    => 'slug',
    ];

     protected $table = "articles";

     protected $fillable = ['title','content', 'user_id', 'category_id', 'path', 'tags'];

     public function setPathAttribute($path){
        if(!empty($path)){
          $nome = $path->getClientOriginalName();
          $this->attributes['path'] = $nome;
          \Storage::disk('local')->put($nome, \File::get($path));
        }
     }

     public function category()
    {
        return $this->belongsTo('App\Category');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }

}
