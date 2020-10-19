@extends('layouts.app')

@section('content')
    <!-- Desktop Logo and Navigationbar Menu Section Ends -->
    <!-- Page Listing Info Section Starts -->
    <div class="container-fluid bg-interview-article-post-iapp">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="page-listing-iapp">
                            <p>
                                <a href="/">ホーム</a><i class="fas fa-chevron-right"></i>
                                <a href="/article?pref={{ $pref->id }}">{{ $pref->name }}</a><i class="fas fa-chevron-right"></i>
                                <a href="/article?city={{ $city->id }}">{{ $city->name }}</a><i class="fas fa-chevron-right"></i>
                                <a href="#">{{ $article->title }}</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Listing Info Section Ends -->
    <!-- Interview Article Post Section Starts -->
    <div class="container-fluid bg-interview-article-post-info-iapp">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8">
                        <div class="box-interview-article-post-info-iapp">
                            <div class="interview-article-post-heading-info-iapp">
                                <h1>{{ $article->title }}</h1>
                            </div>
                            <div class="row">
                                <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
                                    <div class="relaes-date-info-iapp">
                                        <p>公開日：{{ date('Y年m月d日', strtotime($article->created_at)) }}</p>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                                    <div class="eye-num-info-iapp">
                                        <img src="/images/eye.png" class="img-fluid" alt="" />
                                        <span>{{ $article->all_views_count }}</span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <ul class="ranking-view-listing-home">
                                        <li>{{ $article->category }}</li>
                                        @if($article->file)
                                            <li>動画つき</li>
                                        @endif
                                    </ul>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="interview-article-post-img-info-iapp">
                                        <img src="/{{ $article->image }}" class="img-fluid" alt="" />
                                        <h6>この記事のインタビュイー</h6>
                                        <h3>{{ $article->user_name }}さん</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="row no-gutters">
                                <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                    <table class="table table-iap-info-iapp">
                                        <tbody>
                                        <tr>
                                            <td>勤務地</td>
                                            <td>{{ $pref->name }} / {{ $city->name }}</td>
                                        </tr>
                                        <tr>
                                            <td>役職</td>
                                            <td>{{ $article->user_job }}</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                    <table class="table table-iap-info-iapp">
                                        <tbody>
                                        <tr>
                                            <td>会社名</td>
                                            <td>{{ $company->title }}</td>
                                        </tr>
                                        <tr>
                                            <td>年齢</td>
                                            <td>{{ $article->user_age }}歳</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="box-sample-corpo-form-iapp">
                                        <div class="row flex-align-center display-block no-gutters">
                                            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-6">
                                                <div class="sample-corpo-form-img-iapp">
                                                    <img src="/{{ $company->image }}" class="img-fluid" alt="" />
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-6">
                                                <div class="sample-corpo-form-iapp">
                                                    <div class="sample-corpo-form-heading-iapp">
                                                        <h3>{{ $company->title }}</h3>
                                                    </div>

                                                    <div class="input-group mb-3 input-group-sm">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text input-group-sc-text">勤務地</span>
                                                        </div>
                                                        <input type="text" class="form-control form-control-sc-iapp" placeholder="{{ $pref->name }}{{ $city->name }}" disabled />
                                                    </div>
                                                    <div class="input-group mb-3 input-group-sm">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text input-group-sc-text">アクセス</span>
                                                        </div>
                                                        <input type="text" class="form-control form-control-sc-iapp" placeholder="{{ $company->access }}" disabled />
                                                    </div>
                                                    <div class="input-group mb-3 input-group-sm">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text input-group-sc-text">電話番号</span>
                                                        </div>
                                                        <input type="text" class="form-control form-control-sc-iapp" placeholder="{{ $company->phone }}" disabled />
                                                    </div>
                                                    <div class="view-job-listing-ftj-iapp">
                                                        <button class="btn-view-job-listing-iapp" onclick="location.href='/company/{{ $company->id }}'">この会社の求人情報を見る</button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-10 offset-sm-1 col-md-10 offset-md-1 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2">
                                    <div class="box-table-contents-info-iapp">
                                        <div class="table-content-heading-iapp">
                                            <p>目次 <i class="fas fa-chevron-circle-up"></i></p>
                                        </div>
                                        <ul class="table-content-listing">
                                            @if($article->title1) <li>{{ $article->title1 }}</li> @endif
                                            @if($article->title2) <li>{{ $article->title2 }}</li> @endif
                                            @if($article->title3) <li>{{ $article->title3 }}</li> @endif
                                            @if($article->title4) <li>{{ $article->title4 }}</li> @endif
                                            @if($article->title5) <li>{{ $article->title5 }}</li> @endif
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="faq-heading-desc-iapp">
                                        @if($article->title1)
                                            <h2>{{ $article->title1 }}</h2>
                                            <div class="faq-que-ans-iapp">
                                                {{ nl2br($article->content1) }}
                                            </div>
                                        @endif

                                        @if($article->title2)
                                            <h2>{{ $article->title2 }}</h2>
                                            <div class="faq-que-ans-iapp">
                                                {{ nl2br($article->content2) }}
                                            </div>
                                        @endif

                                        @if($article->title3)
                                            <h2>{{ $article->title3 }}</h2>
                                            <div class="faq-que-ans-iapp">
                                                {{ nl2br($article->content2) }}
                                            </div>
                                        @endif

                                        @if($article->title4)
                                            <h2>{{ $article->title4 }}</h2>
                                            <div class="faq-que-ans-iapp">
                                                {{ nl2br($article->content4) }}
                                            </div>
                                        @endif

                                        @if($article->title5)
                                            <h2>{{ $article->title2 }}</h2>
                                            <div class="faq-que-ans-iapp">
                                                {{ nl2br($article->content5) }}
                                            </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="box-sample-corpo-form-iapp">
                                        <div class="row flex-align-center display-block no-gutters">
                                            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-6">
                                                <div class="sample-corpo-form-img-iapp">
                                                    <img src="/{{ $company->image }}" class="img-fluid" alt="" />
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-6">
                                                <div class="sample-corpo-form-iapp">
                                                    <div class="sample-corpo-form-heading-iapp">
                                                        <h3>{{ $company->title }}</h3>
                                                    </div>

                                                    <div class="input-group mb-3 input-group-sm">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text input-group-sc-text">勤務地</span>
                                                        </div>
                                                        <input type="text" class="form-control form-control-sc-iapp" placeholder="{{ $pref->name }}{{ $city->name }}" disabled />
                                                    </div>
                                                    <div class="input-group mb-3 input-group-sm">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text input-group-sc-text">アクセス</span>
                                                        </div>
                                                        <input type="text" class="form-control form-control-sc-iapp" placeholder="{{ $company->access }}" disabled />
                                                    </div>
                                                    <div class="input-group mb-3 input-group-sm">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text input-group-sc-text">電話番号</span>
                                                        </div>
                                                        <input type="text" class="form-control form-control-sc-iapp" placeholder="{{ $company->phone }}" disabled />
                                                    </div>
                                                    <div class="view-job-listing-ftj-iapp">
                                                        <button class="btn-view-job-listing-iapp" onclick="location.href='/company/{{ $company->id }}'">この会社の求人情報を見る</button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                <a href="/article/{{ $prevArticle->id }}">
                                    <div class="box-article-img-info-iapp">
                                        <div class="box-article-img-iapp">
                                            <img src="/{{ $prevArticle->image }}" />
                                        </div>
                                        <div class="box-article-info-iapp">
                                            <p>< 前の記事</p>
                                            <p>{{ $prevArticle->title }}</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                <a href="/article/{{ $nextArticle->id }}">
                                    <div class="box-article-img-info-iapp">
                                        <div class="box-article-img-iapp">
                                            <img src="/{{ $nextArticle->image }}" />
                                        </div>
                                        <div class="box-article-info-iapp">
                                            <p style="text-align: right;">次の記事 ></p>
                                            <p>{{ $nextArticle->title }}</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                <div class="box-interview-article-sc-iapp">
                                    <div class="box-interview-article-sc-heading-iapp">
                                        <h3>同じ企業のインタビュー記事</h3>
                                    </div>
                                    <div class="box-interview-article-sc-body-iapp">
                                        @foreach($sameCompanyArticles as $article)
                                            @include('part.article_side_block')
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                <div class="box-interview-article-sc-iapp">
                                    <div class="box-interview-article-sc-heading-iapp box-monthly-view-ranking-heading-iapp">
                                        <h3>月間閲覧数ランキング</h3>
                                    </div>
                                    <div class="box-interview-article-sc-body-iapp">
                                        @foreach($monthArticles as $i=>$article)
                                            <?php $ranking = $i + 1; ?>
                                            @include('part.ranking_side_block')
                                        @endforeach

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
                        <div class="box-recommend-interview-article-ialp">
                            <div class="box-recommend-interview-article-heading-ialp">
                                <h3>おすすめインタビュー記事</h3>
                            </div>
                            <div class="box-all-interview-article-body-ialp">
                                @foreach($recommendArticles as $article)
                                    @include('part.article_side_block')
                                @endforeach
                                <div class="row">
                                    <div class="col-12">
                                        <div class="all-article-list-ialp">
                                            <a href="/article?sort=recommend">おすすめ記事一覧へ <i class="fas fa-chevron-circle-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="box-new-interview-article-ialp">
                            <div class="box-new-interview-article-heading-ialp">
                                <h3>新着インタビュー記事</h3>
                            </div>
                            <div class="box-all-interview-article-body-ialp">
                                @foreach($newArticles as $article)
                                    @include('part.article_side_block')
                                @endforeach
                                <div class="row">
                                    <div class="col-12">
                                        <div class="all-article-list-ialp">
                                            <a href="/article?sort=new">新着記事一覧へ <i class="fas fa-chevron-circle-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="box-interview-article-video-ialp">
                            <div class="box-interview-article-video-heading-ialp">
                                <h3>動画つきインタビュー記事</h3>
                            </div>
                            <div class="box-all-interview-article-body-ialp">
                                @foreach($videoArticles as $article)
                                    @include('part.article_side_block')
                                @endforeach
                                <div class="row">
                                    <div class="col-12">
                                        <div class="all-article-list-ialp">
                                            <a href="/article?sort=video">動画つき記事一覧へ <i class="fas fa-chevron-circle-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="box-banner-with-info-ialp">
                            <div class="box-banner-ialp">
                                <p>バナー</p>
                            </div>
                            <div class="box-banner-ialp">
                                <p>バナー</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Interview Article Post Section Ends -->
@endsection
