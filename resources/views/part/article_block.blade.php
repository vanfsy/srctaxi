<a href="/article/{{ $article->id }}">
    <div class="box-new-interview-article-video-img-info-home">
        <div class="box-new-interview-article-video-img-home image-container">
            <div class="image-box" style="background-image: url('/{{ $article->image }}')">
                <img src="/{{ $article->image }}" style="visibility: hidden;" />
            </div>
        </div>

        <div class="box-new-interview-article-video-info-home">
            <h6>{{ date('Y年m月d日', strtotime($article->created_at)) }}</h6>
            <ul class="ranking-view-listing-home">
                <li>{{ $article->user_job }}</li>
                @if($article->file)
                    <li>動画つき</li>
                @endif
            </ul>

            <h6>{{ $article->title }}</h6>
            <p>{{ $article->content1 }}</p>
        </div>
    </div>
</a>
