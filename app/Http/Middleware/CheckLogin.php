<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class CheckLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::check()) {
            $userId = Auth::id();
            $sessionId = $request->session()->getId();
            if(Storage::disk('local')->exists('login/'.$userId.'.txt')){
                $sessionIdFile = Storage::disk('local')->get('login/'.$userId.'.txt');
                if($sessionId !== $sessionIdFile){
                    Auth::logout();
                    return redirect('/thong-bao/dang-nhap');
                }
            }

        }
        return $next($request);
    }
}
