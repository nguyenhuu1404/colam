<?php

namespace App\Http\Controllers\Frontend\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

use Illuminate\Http\Request;
use Socialite;
use Exception;
use Auth;
use Illuminate\Support\Facades\Storage;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    //ghi đè lên hàm show login của auth
    public function showLoginForm()
    {
        return view('frontend.auth.login');
    }
    public function logout(Request $request) {
        Auth::logout();
        return redirect('/');
    }
    public function redirectToProviderFacebook(){
        return Socialite::driver('facebook')->redirect();
    }
    public function handleProviderCallbackFacebook(){
        try {
            $user = Socialite::driver('facebook')->user();
        } catch (\Exception $e) {
            return redirect('/');
        }
        $existingUser = User::where('email', $user->email)->first();
        //dd($existingUser);die();
        if($existingUser){
            // log them in
            Auth::login($existingUser);
        } else {
            // create a new user
            $newUser                  = new User;
            $newUser->name            = $user->name;
            $newUser->email           = $user->email;
            $newUser->facebook_id       = $user->id;
            $newUser->avatar          = $user->avatar;
            $newUser->avatar_original = $user->avatar_original;
            $newUser->save();
            Auth::login($newUser, true);
        }
        return redirect()->to('/');
        // $user->token;
    }
    public function redirectToProviderGoogle(){
        return Socialite::driver('google')->redirect();
    }
    public function handleProviderCallbackGoogle(){
        try {
            $user = Socialite::driver('google')->user();
        } catch (\Exception $e) {
            return redirect('/');
        }

        // check if they're an existing user
        $existingUser = User::where('email', $user->email)->first();
        //dd($existingUser);die();
        if($existingUser){
            // log them in
            Auth::login($existingUser);
        } else {
            // create a new user
            $newUser                  = new User;
            $newUser->name            = $user->name;
            $newUser->email           = $user->email;
            $newUser->google_id       = $user->id;
            $newUser->avatar          = $user->avatar;
            $newUser->avatar_original = $user->avatar_original;
            $newUser->save();
            Auth::login($newUser, true);
        }
        return redirect()->to('/');
    }
    public function authenticated(Request $request, $user){
        $sessionId = $request->session()->getId();
        Storage::put('login/'.$user->id.'.txt', $sessionId);
        $url = $request->input('url');
        return redirect($url);
    }
}
