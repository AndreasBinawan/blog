<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categories;
use Illuminate\Support\Str;
use DB;

class PostController extends Controller
{
    private $categories;
    private $mini_post;
    public function __construct()
    {
        $this->categories = Categories::all();
        $this->mini_post = DB::table('articles')
        ->join('categories', 'categories.id', '=', 'articles.categories_id')
        ->join('users', 'users.id', '=', 'articles.users_id')
        ->orderBy('articles.created_at', 'DESC')
        ->select('articles.title','articles.images','articles.alt','articles.created_at','categories.icon','users.name')
        ->limit(4)
        ->get();
    }

    public function index()
    {
        $categories = $this->categories;
        $mini_post = $this->mini_post;
        $data = DB::table('articles')
        ->join('categories', 'categories.id', '=', 'articles.categories_id')
        ->join('users', 'users.id', '=', 'articles.users_id')
        ->orderBy('articles.created_at', 'DESC')
        ->select('articles.title','articles.images','articles.alt','articles.news','articles.created_at','categories.icon','users.name')
        ->simplePaginate(4);
       
        return view('frontend.content-page.home', compact('categories','data', 'mini_post'));
    }

    public function pageByCategory($id)
    {
        $categories = $this->categories;
        $mini_post = $this->mini_post;
        $slug = str::replace('-',' ',$id);
        $data = DB::table('articles')
        ->join('categories', 'categories.id', '=', 'articles.categories_id')
        ->join('users', 'users.id', '=', 'articles.users_id')
        ->orderBy('articles.created_at', 'DESC')
        ->select('categories.category_name','articles.title','articles.images','articles.alt','articles.news','articles.created_at','categories.icon','users.name')
        ->where('categories.category_name','=',str::replace('-',' ',$id))
        ->simplePaginate(4);

        return view('frontend.content-page.page-by-category', compact('categories','mini_post', 'data','slug'));
    }

    public function search(Request $request)
    {
        $categories = $this->categories;
        $mini_post = $this->mini_post;

        $keyword = $request->get('keyword');

        $data = DB::table('articles')
        ->join('categories','categories.id','=','articles.categories_id')
        ->join('users', 'users.id', '=', 'articles.users_id')
        ->select('articles.*','categories.category_name','categories.icon','users.name')
        ->where('articles.title','like','%'.$keyword.'%')
        ->orWhere('articles.news','like','%'.$keyword.'%')
        ->orWhere('articles.alt','like','%'.$keyword.'%')
        ->orWhere('categories.category_name','like','%'.$keyword.'%')
        ->orderBy('articles.created_at','DESC')
        ->simplePaginate(4);

        $data->appends($request->only('keyword'));

        return view('frontend.content-page.search',compact('categories','mini_post','data','keyword'));
    }
}
