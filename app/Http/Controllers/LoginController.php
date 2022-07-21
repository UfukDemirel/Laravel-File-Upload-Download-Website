<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use RealRashid\SweetAlert\Facades\Alert;

class LoginController extends Controller
{
    public function login(){
        return view('login');
    }

        public function loginpost(Request $request){

                if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
                    Alert::alert('Great!', 'Signed in...', 'success');
                    if (Auth::user()->permission_level == 'admin') {
                        return redirect()->intended(route('dashboard'));
                    } else {
                        return redirect()->intended(route('index'));
                    }
                } else {
                    Alert::error('Error', 'Could not login...', 'error');
                    return redirect()->route('login');
                }
    }

    public function register(){
        return view('register');
    }

    public function registerpost(Request $request){
        $request->validate([
            'email'=>'required',
            'password'=>'required',
        ]);

        $post = DB::table('users')->insert([
           "email"=>$request->email,
           "password"=>Hash::make($request->password),
           "permission_level"=>("user")
        ]);

        if($post){
            Alert::success('Great!', 'Record created..');
            return redirect()->route('login');
        }else{
            Alert::error('Error!', 'Error occurred while registering!..');
            return back();
        }
    }

    public function exit(){
        Auth::logout();
        Alert::success('Great!', 'logged out..');
        return redirect()->route('login');
    }


}
