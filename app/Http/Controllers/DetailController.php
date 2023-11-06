<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Categories;
use App\Models\Articles;
use AApp\Models\User;
use App \Models\Comments;
use DB;

class DetailController extends Controller
{
    public function detailArticle($id)
    {
        $categories = Categories::all();
        $articles = Articles::whereTitle(Str::replace('-',' ',$id))->firstOrFail();
        $tags = $articles->tags()->get();
        $user = $articles->users->name;

        $comment = DB::table('comments')
                   ->join('articles', 'comments.articles_id', '=', 'articles.id')
                   ->select('comments.reply','comments.created_at')
                   ->where('articles.title','=',Str::replace('-',' ',$id))
                   ->orderBy('comments.created_at','desc')
                   ->get();

        return view('frontend.content-page.detail-page',compact('categories','articles','tags','user','comment'));
    }

    public function saveComment(Request $request)
    {
        $this->validate($request, [
            'comment' => 'required|string|max:100'
        ]);

        $articles = Articles::whereTitle($request->input('title'))->firstOrFail();

        if($articles) {
          $data =  [

            'articles_id' => $articles->id,
            'reply' => $request->input('comment'),
            'avatar' => 'img_avatar1.png'
            ];

            if(Comments::create($data)){
                return redirect()->back()->with('comments','Sukses menambahkan komentar');
            }
                return redirect()->back()->with('comments','Gagal menambahkan komentar');
        }

        
    }
}
