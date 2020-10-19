@extends('layouts.app')

@section('content')
    <!-- Desktop Logo and Navigationbar Menu Section Ends -->
    <!-- Page Listing Info Section Starts -->
    <div class="container-fluid bg-job-listing-jlp">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="page-listing-jlp">
                            <p>
                                <a href="/">ホーム</a><i class="fas fa-chevron-right"></i>
                                <a href="#">{{ $company->title }}求人情報</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Listing Info Section Ends -->
    <!-- Job Listing Page Section Starts -->
    <div class="container-fluid bg-job-listing-info-jlp">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8">
                        <div class="box-job-listing-info-jlp">
                            <div class="sample-corpo-info">
                                <h2>{{ $company->title }}</h2>
                                <h1>{{ $company->description }}</h1>
                            </div>
                            <div class="appeal-point-ihd-jlp">
                                <img src="/{{ $company->image }}" class="img-fluid" alt="" />
                                <h3>アピールポイント</h3>
                                <p>{{ $company->appeal }}</p>
                            </div>
                            <div class="application-require-info-jlp">
                                <h2>募集要項</h2>
                                <table class="table table-ar-info-jlp">
                                    <tbody>
                                    <tr>
                                        <td>事業内容</td>
                                        <td>{{ nl2br($company->business_description) }}</td>
                                    </tr>
                                    <tr>
                                        <td>募集要項	</td>
                                        <td>{{ nl2br($company->requirement) }}</td>
                                    </tr>
                                    <tr>
                                        <td>雇用形態	</td>
                                        <td>{{ nl2br($company->employment) }}</td>
                                    </tr>
                                    <tr>
                                        <td>応募資格</td>
                                        <td>{{ nl2br($company->qualification) }}</td>
                                    </tr>
                                    <tr>
                                        <td>勤務地	</td>
                                        <td>{{ $pref->name }}{{ $city->name }}{{ $company->address }}</td>
                                    </tr>
                                    <tr>
                                        <td>勤務時間</td>
                                        <td>{{ nl2br($company->business_time) }}</td>
                                    </tr>
                                    <tr>
                                        <td>賃金体系</td>
                                        <td>{{ nl2br($company->wage_sys) }}</td>
                                    </tr>
                                    <tr>
                                        <td>給与</td>
                                        <td>{{ nl2br($company->salary) }}</td>
                                    </tr>
                                    <tr>
                                        <td>待遇</td>
                                        <td>{{ nl2br($company->treatment) }}</td>
                                    </tr>
                                    <tr>
                                        <td>休日・休暇</td>
                                        <td>{{ nl2br($company->holiday) }}</td>
                                    </tr>
                                    <tr>
                                        <td>貸付制度</td>
                                        <td>{{ nl2br($company->lending_sys) }}</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="form-call-listing-jlp">
                                    <li><a href="/application/{{ $company->id }}"><i class="fas fa-envelope"></i> 応募フォームから応募する</a></li>
                                    <li><a href="tel:080-456-7890"><i class="fas fa-call"></i> 電話から応募する</a></li>
                                </ul>
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
@endsection
