<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = "categories";

    protected $fillable = ['name'];

    // Relacionamento de 1 para muitos da tabela categories com a tabela articles
    public function articles(){
    	return $this->hasMany('App\Article');
    }
}
