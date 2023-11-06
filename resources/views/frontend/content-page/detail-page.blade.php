@extends('frontend.base.base')
@section('content-page')
@section('title', 'DUMET CMS - '. $articles->title)
@section('detail', 'single')
<!-- Main -->
<div id="main">

    <!-- Post -->
        <article class="post">
            <header>
                <div class="title">
                    <h2><a href="#">{{ $articles->title }}</a></h2>
                    <p><span>Tags: <?php foreach($tags as $tag) {echo $tag->tag_name. "&nbsp";} ?></span><span></span></p>
                </div>
                <div class="meta">
                    <time class="published" datetime="2015-11-01">{{ \Carbon\Carbon::parse($articles->created_at)->format('d F Y') }}</time>
                    <a href="#" class="author"><span class="name">{{ $user }}</span><img src="images/avatar.jpg" alt="" /></a>
                </div>
            </header>
            <span class="image featured"><img src="{{ asset('assets/frontend/images/'.$articles->images) }}" alt="" /></span>
            {{ $articles->news }}
            <footer>
                <ul class="stats">
                    <li><a href="#">General</a></li>
                    <li><a href="#" class="icon fa-heart">28</a></li>
                    <li><a href="#" class="icon fa-comment">128</a></li>
                </ul>
            </footer>
        </article>

</div>

{{-- Comments --}}
<div class="comments">
    @if ($errors->any())
    <div class="alert alert-danger" style="background: red;color:white;">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
@if (Session::has('comments'))
    <div class="alert alert-danger" style="background: red;color:white;">
        <ul>
           
                <li>{!! Session::get('comments') !!}</li>
        </ul>
    </div>
@endif
    <form action="{{ url('detail/save-comment') }}" method="POST" >
        @csrf
        <label for="fname">Enter The Comments here</label>
        <input type="text" name="comment" placeholder="Your Comment..">
        <input type="hidden" name="title" value="{{ $articles->title }}">
        <br>
        <input type="submit" value="Submit">
    </form>
</div>

{{-- Photo --}}
<div class="container">
    <div class="row">
    <div class="col-sm-12">
    <h3>User Comment Example</h3>

    @if(empty($comment))
    @else
    @foreach($comment as $row_comments)
    <div class="row">
    <div class="col-sm-1">
    <div class="thumbnail">
    <img src="{{ asset('assets/frontend/images/img_avatar1.png') }}" alt="" style="width: 80px" class="img-responsive user-photo">
    </div>
    </div>
    <div class="col-sm-5">
    <div class="panel panel-default">
    <div class="panel-body">
    <div class="panel-heading">
    <strong>myUsername</strong> <span class="text-muted">commented {{ \Carbon\Carbon::parse($row_comments->created_at)->format('d F Y') }}</span>
    </div>
    <div class="panel-body">
           {{$row_comments->reply}}
    </div>
    </div>
    </div>
    </div>
    @endforeach
    @endif
</div>
</div>
    
</div>
</div>

@endsection
