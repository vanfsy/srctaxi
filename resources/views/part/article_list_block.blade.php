<a href="/article/{{ $article->id }}">
<div class="box-interview-article-img-info-ialp">

    <div class="box-interview-article-img-ialp image-container">
        <div class="image-box" style="background-image: url('/{{ $article->image }}')">
            <img src="/{{ $article->image }}" style="visibility: hidden;" />
        </div>
    </div>
    <div class="box-interview-article-info-ialp">
        <ul class="ranking-view-listing-home ranking-view-listing-ialp">
            <li>{{ $article->user_job }}</li>
            @if($article->file) <li>動画つき</li> @endif
        </ul>
        <h3>{{ $article->title }}</h3>
        <ul class="person-info-ialp">
            <li>勤務地 <span>{{ $article->pref_name }}{{ $article->city_name }}</span></li>
            <li>会社名 <span>{{ $article->company->title }}</span></li>
            <li>年齢 <span>{{ $article->user_age }}歳</span></li>
        </ul>
        <div class="row">
            <div class="col-sm-8 col-md-8 col-lg-8 col-xl-8">
                <div class="release-date-ialp">
                    <p>公開日：{{ date('Y年m月d日', strtotime($article->created_at)) }}</p>
                </div>
            </div>
            <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                <div class="eye-num-ialp">
                    <img src="{{ asset('images/eye.png') }}" alt="" />
                    <span>{{ number_format($article->all_views_count) }}</span>
                </div>
            </div>
        </div>
    </div>

</div>
</a>
