@extends('layouts.app')

@section('content')
    <!-- Heading and Description Second Starts -->
    <div class="container-fluid bg-interview-articles-lhd-ialp">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="box-interview-articles-lhd">
                            <p><a href="/">ホーム</a><i class="fas fa-chevron-right"></i><a href="#">インタビュー記事一覧</a></p>
                            <h1>インタビュー記事一覧</h1>
                            <p>全国のタクシードライバーのインタビューが探せる、新しいカタチのタクシー求人サイト！全国各地で働いている乗務員やタクシー会社の社長のインタビューが探せます。自分にあった職場を探すのにお役立てください！</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Heading and Description Second Ends -->
    <!-- Interview Articles Section Starts -->
    <div class="container-fluid bg-interview-articles-ialp">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8">
                        @foreach($articles as $article)
                            @include('part.article_list_block')
                        @endforeach

                        {{ $articles->links('pagination.default') }}
                        <div class="interview-article-pagination-ialp" style="display: none">
                            <ul class="interview-article-listing-ialp">
                                <li class="left-right-prev-next"><a href="#"><i class="fas fa-chevron-left"></i></a></li>
                                <li class="left-right-prev-next"><a href="#">前へ</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">...</a></li>
                                <li><a href="#">11</a></li>
                                <li class="left-right-prev-next"><a href="#">次へ</a></li>
                                <li class="left-right-prev-next"><a href="#"><i class="fas fa-chevron-right"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
                        <div class="box-form-home box-form-ialp">
                            <div class="box-form-heading-home box-form-heading-ialp">
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
                                                @if(isset($allConditions['pref']) && $allConditions['pref'] == $key)
                                                    <option value="{{ $key }}" selected>{{ $val }}</option>
                                                @else
                                                    <option value="{{ $key }}">{{ $val }}</option>
                                                @endif
                                                <?php endforeach; ?>
                                            </select>
                                            <input type="hidden" value="{{ json_encode($prefCities) }}" id="prefCities" />
                                        </div>
                                        <div class="custom-selection">
                                            <select class="form-control" name="city" id="citySelect">
                                                <option value="">全て</option>
                                                <?php foreach($cities as $key=>$val): ?>
                                                @if(isset($allConditions['city']) && $allConditions['city'] == $val['id'])
                                                    <option value="{{ $val['id'] }}" selected>{{ $val['name'] }}</option>
                                                @else
                                                    <option value="{{ $val['id'] }}">{{ $val['name'] }}</option>
                                                @endif
                                                <?php endforeach; ?>
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
                                            <?php foreach($arrCategories as $cate): ?>
                                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                                <label class="interview-content-label">
                                                    @if(isset($allConditions['category']) && in_array($cate, $allConditions['category']))
                                                        <input type="checkbox" name="category[]" value="{{ $cate }}" class="interview-content-checkbox-input" checked>
                                                    @else
                                                        <input type="checkbox" name="category[]" value="{{ $cate }}" class="interview-content-checkbox-input">
                                                    @endif
                                                    <span></span>
                                                    <span>{{ $cate }}</span>
                                                </label>
                                            </div>
                                            <?php endforeach; ?>
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
                                                    @if(isset($allConditions['video']) && in_array('ari', $allConditions['video']))
                                                        <input type="checkbox" name="video[]" class="interview-content-checkbox-input" value="ari" checked>
                                                    @else
                                                        <input type="checkbox" name="video[]" class="interview-content-checkbox-input" value="ari">
                                                    @endif
                                                    <span></span>
                                                    <span>動画つき</span>
                                                </label>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                                <label class="interview-content-label">
                                                    @if(isset($allConditions['video']) && in_array('nashi', $allConditions['video']))
                                                        <input type="checkbox" name="video[]" class="interview-content-checkbox-input" value="nashi" checked>
                                                    @else
                                                        <input type="checkbox" name="video[]" class="interview-content-checkbox-input" value="nashi">
                                                    @endif
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
                                                <input type="text" class="form-control form-cotrol-free-word" placeholder="地域、会社名、特長など" name="keyword"  value="{{ isset($allConditions['keyword']) ? $allConditions['keyword'] : '' }}"/>
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
                        <div class="box-recommend-interview-article-ialp">
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
        <!-- Interview Articles Section Ends -->
@endsection
