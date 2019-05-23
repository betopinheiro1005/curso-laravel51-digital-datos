<?php

namespace App\Http\Middleware;
use Illuminate\Contracts\Auth\Guard;
use Session;

use Closure;

class Admin
{

    protected $auth;

    public function __construct(Guard $auth){
        $this->auth = $auth;
    }

    public function handle($request, Closure $next)
    {
        if ($this->auth->user()->type !='admin') {
            Session::flash('message-error', 'Sem privilégios para realizar esta operação!');
            return redirect()->to('admin/index');
        }
        return $next($request);
    }
}
