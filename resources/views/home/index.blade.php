@extends('layouts.app')

@section('content')

    <!-- Desktop Logo and Navigationbar Menu Section Ends -->
    <!-- Header Banner Section Starts -->
    <div class="container-fluid bg-header-banner-home">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 col-md-7 col-lg-7 col-xl-7">
                        <div class="header-banner-info-home">
                            <h1>全国のタクシードライバーの <span>インタビューが探せる</span></h1>
                            <p>現役タクシードライバーが教えるタクシーのすべて</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header Banner Section Ends -->
    <!-- Map and Form Section Starts -->
    <div class="container-fluid bg-map-form-home">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-8">
                        <div class="box-map-home">
                            <div class="box-map-heading-home">
                                <h3>条件を指定して検索</h3>
                            </div>
                            <div class="box-map-body-home">
                                <div class="image-mapping-content-home">
                                    <p>全国のタクシードライバーの</p>
                                    <p>インタビューをエリア別でご紹介！</p>
                                </div>
                                <div class="image-mapping-img-home">
                                    <img src="{{ asset('images/image-mapping.png') }}" usemap="#image-map" alt="" />
                                    <map name="image-map">
                                        <area target="" alt="佐賀" title="佐賀" href="/article?pref=41" coords="16,222,58,258" shape="rect">
                                        <area target="" alt="長崎" title="長崎" href="/article?pref=42" coords="15,261,58,297" shape="rect">
                                        <area target="" alt="沖縄" title="沖縄" href="/article?pref=47" coords="51,440,9,343" shape="rect">
                                        <area target="" alt="福岡" title="福岡" href="/article?pref=40" coords="61,221,103,320" shape="rect">
                                        <area target="" alt="大分" title="大分" href="/article?pref=44" coords="109,221,150,320" shape="rect">
                                        <area target="" alt="熊本" title="熊本" href="/article?pref=43" coords="62,325,104,401" shape="rect">
                                        <area target="" alt="宮崎" title="宮崎" href="/article?pref=45" coords="109,325,150,401" shape="rect">
                                        <area target="" alt="鹿児島" title="鹿児島" href="/article?pref=46" coords="61,405,150,441" shape="rect">
                                        <area target="" alt="山口" title="山口" href="/article?pref=35" coords="161,222,202,314" shape="rect">
                                        <area target="" alt="島根" title="島根" href="/article?pref=32" coords="207,222,249,256" shape="rect">
                                        <area target="" alt="鳥取" title="鳥取" href="/article?pref=31" coords="253,222,294,256" shape="rect">
                                        <area target="" alt="広島" title="広島" href="/article?pref=34" coords="206,260,249,314" shape="rect">
                                        <area target="" alt="岡山" title="岡山" href="/article?pref=33" coords="253,261,295,314" shape="rect">
                                        <area target="" alt="兵庫" title="兵庫" href="/article?pref=28" coords="298,221,340,315" shape="rect">
                                        <area target="" alt="愛媛" title="愛媛" href="/article?pref=38" coords="161,324,237,401" shape="rect">
                                        <area target="" alt="香川" title="香川" href="/article?pref=37" coords="242,325,333,361" shape="rect">
                                        <area target="" alt="徳島" title="徳島" href="/article?pref=36" coords="243,365,335,402" shape="rect">
                                        <area target="" alt="高知" title="高知" href="/article?pref=39" coords="161,406,332,441" shape="rect">
                                        <area target="" alt="京都" title="京都" href="/article?pref=26" coords="345,223,386,288" shape="rect">
                                        <area target="" alt="奈良" title="奈良" href="/article?pref=28" coords="344,291,386,338" shape="rect">
                                        <area target="" alt="大阪" title="大阪" href="/article?pref=27" coords="344,342,386,389" shape="rect">
                                        <area target="" alt="和歌山" title="和歌山" href="/article?pref=30" coords="344,405,432,440" shape="rect">
                                        <area target="" alt="石川" title="石川" href="/article?pref=17" coords="391,190,432,240" shape="rect">
                                        <area target="" alt="福井" title="福井" href="/article?pref=18" coords="390,243,432,279" shape="rect">
                                        <area target="" alt="滋賀" title="滋賀" href="/article?pref=25" coords="389,283,432,361" shape="rect">
                                        <area target="" alt="三重" title="三重" href="/article?pref=24" coords="391,365,433,401" shape="rect">
                                        <area target="" alt="富山" title="富山" href="/article?pref=16" coords="436,206,479,239" shape="rect">
                                        <area target="" alt="岐阜" title="岐阜" href="/article?pref=21" coords="436,245,478,378" shape="rect">
                                        <area target="" alt="愛知" title="愛知" href="/article?pref=23" coords="436,382,478,419" shape="rect">
                                        <area target="" alt="新潟" title="新潟" href="/article?pref=15" coords="482,203,549,239" shape="rect">
                                        <area target="" alt="北海道" title="北海道" href="/article?pref=1" coords="518,8,668,53" shape="rect">
                                        <area target="" alt="青森" title="青森" href="/article?pref=2" coords="521,72,659,108" shape="rect">
                                        <area target="" alt="秋田" title="秋田" href="/article?pref=5" coords="523,112,587,146" shape="rect">
                                        <area target="" alt="岩手" title="岩手" href="/article?pref=3" coords="593,111,661,146" shape="rect">
                                        <area target="" alt="山形" title="山形" href="/article?pref=6" coords="524,153,590,186" shape="rect">
                                        <area target="" alt="宮城" title="宮城" href="/article?pref=4" coords="593,152,661,199" shape="rect">
                                        <area target="" alt="福島" title="福島" href="/article?pref=7" coords="552,202,660,239" shape="rect">
                                        <area target="" alt="長野" title="長野" href="/article?pref=20" coords="481,243,523,337" shape="rect">
                                        <area target="" alt="山梨" title="山梨" href="/article?pref=19" coords="482,342,550,376" shape="rect">
                                        <area target="" alt="静岡" title="静岡" href="/article?pref=22" coords="482,382,550,419" shape="rect">
                                        <area target="" alt="群馬" title="群馬" href="/article?pref=10" coords="529,244,569,295" shape="rect">
                                        <area target="" alt="栃木" title="栃木" href="/article?pref=9" coords="572,245,615,294" shape="rect">
                                        <area target="" alt="埼玉" title="埼玉" href="/article?pref=11" coords="527,298,615,337" shape="rect">
                                        <area target="" alt="東京" title="東京" href="/article?pref=13" coords="553,343,616,377" shape="rect">
                                        <area target="" alt="神奈川" title="神奈川" href="/article?pref=14" coords="553,380,616,417" shape="rect">
                                        <area target="" alt="茨城" title="茨城" href="/article?pref=8" coords="619,245,660,309" shape="rect">
                                        <area target="" alt="千葉" title="千葉" href="/article?pref=12" coords="619,314,661,431" shape="rect">
                                    </map>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-4">
                        <div class="box-form-home">
                            <div class="box-form-heading-home">
                                <h3>条件を指定して検索</h3>
                            </div>
                            <form action="/article" method="get" id="articleForm">
                                @csrf
                                <div class="box-form-body-home">
                                    <div class="box-area-home">
                                        <div class="box-specify-condition-heading-home">
                                            <i class="fas fa-check"></i>
                                            <span>エリア</span>
                                        </div>
                                        <div class="custom-selection">
                                            <select class="form-control" name="pref" id="prefSelect">
                                                <option value="">全て</option>
                                                <?php foreach($pref as $key=>$val): ?>
                                                <option value="{{ $key }}">{{ $val }}</option>
                                                <?php endforeach; ?>
                                            </select>
                                            <input type="hidden" value="{{ json_encode($prefCities) }}" id="prefCities" />
                                        </div>
                                        <div class="custom-selection">
                                            <select class="form-control" name="city" id="citySelect">
                                                <option value="">全て</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="box-area-home">
                                        <div class="box-specify-condition-heading-home">
                                            <i class="fas fa-check"></i>
                                            <span>役職</span>
                                        </div>
                                        <div class="custom-selection">
                                            <select class="form-control" name="job" id="jobSelect">
                                                <option value="">全て</option>
                                                <?php foreach($arrJobs as $job): ?>
                                                @if(isset($allConditions['job']) && $allConditions['job'] == $job)
                                                    <option value="{{ $job }}" selected>{{ $job }}</option>
                                                @else
                                                    <option value="{{ $job }}">{{ $job }}</option>
                                                @endif
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="box-interview-content-home">
                                        <div class="box-specify-condition-heading-home">
                                            <i class="fas fa-check"></i>
                                            <span>インタビュー内容</span>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                                <label class="interview-content-label">
                                                    <input type="checkbox" name="category[]" value="入社前・研修" class="interview-content-checkbox-input">
                                                    <span></span>
                                                    <span>入社前・研修</span>
                                                </label>
                                                <label class="interview-content-label">
                                                    <input type="checkbox" name="category[]" value="給料" class="interview-content-checkbox-input">
                                                    <span></span>
                                                    <span>給料</span>
                                                </label>
                                                <label class="interview-content-label">
                                                    <input type="checkbox" name="category[]" value="福利厚生" class="interview-content-checkbox-input">
                                                    <span></span>
                                                    <span>福利厚生</span>
                                                </label>
                                                <label class="interview-content-label">
                                                    <input type="checkbox" name="category[]" value="会社イベント" class="interview-content-checkbox-input">
                                                    <span></span>
                                                    <span>会社イベント</span>
                                                </label>
                                                <label class="interview-content-label">
                                                    <input type="checkbox" name="category[]" value="乗務員資格" class="interview-content-checkbox-input">
                                                    <span></span>
                                                    <span>乗務員資格</span>
                                                </label>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                                <label class="interview-content-label">
                                                    <input type="checkbox" name="category[]" value="乗務" class="interview-content-checkbox-input">
                                                    <span></span>
                                                    <span>乗務</span>
                                                </label>
                                                <label class="interview-content-label">
                                                    <input type="checkbox" name="category[]" value="休日" class="interview-content-checkbox-input">
                                                    <span></span>
                                                    <span>休日</span>
                                                </label>
                                                <label class="interview-content-label">
                                                    <input type="checkbox" name="category[]" value="タクシー機関" class="interview-content-checkbox-input">
                                                    <span></span>
                                                    <span>タクシー機関</span>
                                                </label>
                                                <label class="interview-content-label">
                                                    <input type="checkbox" name="category[]" value="グルメ" class="interview-content-checkbox-input">
                                                    <span></span>
                                                    <span>グルメ</span>
                                                </label>
                                                <label class="interview-content-label">
                                                    <input type="checkbox" name="category[]" value="その他" class="interview-content-checkbox-input">
                                                    <span></span>
                                                    <span>その他</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="box-interview-video-home">
                                        <div class="box-specify-condition-heading-home">
                                            <i class="fas fa-check"></i>
                                            <span>インタビュー動画</span>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                                <label class="interview-content-label">
                                                    <input type="checkbox" name="video[]" class="interview-content-checkbox-input" value="ari">
                                                    <span></span>
                                                    <span>動画つき</span>
                                                </label>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                                <label class="interview-content-label">
                                                    <input type="checkbox" name="video[]" class="interview-content-checkbox-input" value="nashi">
                                                    <span></span>
                                                    <span>動画なし</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="box-free-word-home">
                                        <div class="box-specify-condition-heading-home">
                                            <i class="fas fa-check"></i>
                                            <span>フリーワード</span>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                <input type="text" class="form-control form-cotrol-free-word" placeholder="地域、会社名、特長など" name="keyword" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="box-hit-home">
                                                    <p><label id="article_number">{{ number_format($articlesNumber) }}</label> <span>件ヒット</span></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="search-by-selected-conditions">
                                                    <input type="submit" class="btn-selected-conditions" value="選択した条件で検索" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Map and Form Section Ends -->
    <!-- Recommended Interview Article Section Starts -->
    <div class="container-fluid bg-recommend-interview-article-view-home">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="box-recommend-interview-article-view-home">
                            <div class="box-recommend-interview-article-view-heading-home">
                                <h3>おすすめインタビュー記事</h3>
                                <div class="recommend-articles-list-home">
                                    <a href="/article?sort=recommend">おすすめ記事一覧へ <i class="fas fa-chevron-circle-right"></i></a>
                                </div>
                            </div>
                            <div class="box-recommend-interview-article-view-body-home">
                                <div class="row">
                                    <?php foreach($recommendArticles as $article): ?>
                                    @include('part.article_height_block')
                                    <?php endforeach; ?>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Recommended Interview Article Section Ends -->
    <!-- New Interview Article and with Video Section Starts -->
    <div class="container-fluid bg-new-interview-article-video-home">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6">
                        <div class="box-new-interview-article-home">
                            <div class="box-new-interview-article-heading-home">
                                <h3>新着インタビュー記事</h3>
                            </div>
                            <div class="box-new-interview-article-body-home">
                                <div class="row">
                                    <div class="col-12">
                                        <?php foreach ($newArticles as $article): ?>
                                        @include('part.article_block')
                                        <?php endforeach; ?>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="new-article-list-home">
                                            <a href="/article?sort=new">新着記事一覧へ <i class="fas fa-chevron-circle-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-6">
                        <div class="box-new-interview-article-video-home">
                            <div class="box-new-interview-article-video-heading-home">
                                <h3>動画つきインタビュー記事</h3>
                            </div>
                            <div class="box-new-interview-article-video-body-home">
                                <div class="row">
                                    <div class="col-12">
                                        <?php foreach ($videoArticles as $article): ?>
                                        @include('part.article_block')
                                        <?php endforeach; ?>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="new-article-video-list-home">
                                            <a href="/article?sort=video">動画つき記事一覧へ <i class="fas fa-chevron-circle-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- New Interview Article and with Video Section Ends -->
    <!-- Ranking View Section Starts -->
    <div class="container-fluid bg-ranking-view-home">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="box-ranking-view-home">
                            <div class="box-ranking-view-heading-home">
                                <h3>月間閲覧数ランキング</h3>
                            </div>
                            <div class="box-ranking-view-body-home">
                                <div class="row">
                                    <?php foreach($monthArticles as $i => $article): ?>
                                    <?php $ranking = $i + 1; ?>
                                    @include('part.ranking_block')
                                    <?php endforeach; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Ranking View Section Ends -->
    <!-- Banner Section Starts -->
    <div class="container-fluid bg-banner-home">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="box-banner-home">
                            <p>バナー</p>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="box-banner-home">
                            <p>バナー</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner Section Ends -->
@endsection
