<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use RealRashid\SweetAlert\Facades\Alert;

class PostController extends Controller
{

    public function index(){
        /* kullanıcın active i bir gün sonra 0 olacak */
        return view('index');
    }

    public function post(Request $request){

        $date = date('Y-m-d H:i:s');
        $request->validate([
           'full_name'=>'required',
           'email_address'=>'required',
           'file'=>'required|image|mimes:jpg,jpeg,png|max:5000',
        ]);

        $file_name=uniqid().'.'.$request->file('file')->getClientOriginalExtension();
        $request->file('file')->move(public_path('/images'),$file_name);

        $post = DB::table("post")->insert([
            "full_name"=>$request->get('full_name'),
            "email_address"=>$request->get('email_address'),
            "file"=>$file_name,
            "file_link"=>("deneme/copy/$file_name"),
            "created_at"=>$date
        ]);

        $file_link = DB::table("users")
            ->where('id',Auth::id())
            ->update([
            "file_link"=>("deneme/copy/$file_name"),
        ]);

        if($post){
            Alert::success('Başarılı!', 'Dosya Yüklendi..');
            return redirect()->route('link');
        }else{
            Alert::error('Hata!', 'Dosya yüklenirken hata oluştu..');
            return back();
        }
    }

    public function link(){
        $link = DB::table('post')->get();
        return view('link',compact('link'));
    }

    public function copy(){
        $link = DB::table('post')->get();
        return view('copy',compact('link'));
    }
}
