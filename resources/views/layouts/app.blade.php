<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />
    <meta name="author" content="" />
    <title>タクシー求人 - ホーム</title>
    <!-- Favicon Icon -->
    <link rel="shortcut icon" href="{{ asset('images/favicon.ico') }}" type="image/x-icon" />
    <link rel="icon" href="{{ asset('images/favicon.ico') }}" type="image/x-icon" />
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="{{ asset('css/all.min.css') }}" type="text/css" />
    <!-- Bootstrap-3 Minified CSS -->
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}" type="text/css" />
    <!-- Custom CSS -->
    <link rel="stylesheet" href="{{ asset('css/style.css') }}" type="text/css" />
    <!-- Media CSS -->
    <link rel="stylesheet" href="{{ asset('css/media.css') }}" type="text/css" />
</head>

<body>
<!-- BG Blur Section Starts -->
<div class="bg-blur"></div>
<!-- BG Blur Section Ends -->
<!-- Mobile Logo and Burger Menu Section Starts -->
<div class="container-fluid bg-logo-burger-menu-home">
    <div class="row flex-align-center">
        <div class="col-9">
            <div class="mobile-logo-home">
                <a href="/">
                    <img src="/images/logo.png" class="img-responsive" alt="" />
                </a>
            </div>
        </div>
        <div class="col-3">
            <div class="burger-menu">
                <span></span>
            </div>
        </div>
    </div>
</div>
<!-- Mobile Logo and Burger Menu Section Ends -->
<!-- Sidebar Menu Section Starts -->
<header class="fixed-sidebar">
    <div class="fixed-sidebar-close">
        <i class="fas fa-times"></i>
    </div>
    <div class="sidebar-menu">
        <ul class="mobile-menu-listing">
            <li class="active"><a href="/">ホーム</a></li>
            <li><a href="/article">インタビュー記事一覧</a></li>
{{--            <li><a href="/article">求人一覧</a></li>--}}
{{--            <li><a href="/article">お問い合わせ</a></li>--}}
        </ul>
    </div>
</header>
<!-- Sidebar Menu Section Ends -->
<!-- Desktop Logo and Navigationbar Menu Section Starts -->
<div class="container-fluid bg-logo-navbar-menu-desktop">
    <div class="row flex-align-center">
        <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
            <div class="header-logo-desktop">
                <a href="/">
                    <img src="/images/logo.png" class="img-fluid" alt="" />
                </a>
            </div>
        </div>
        <div class="col-sm-9 col-md-9 col-lg-9 col-xl-9">
            <ul class="menu-listing-desktop">
                <li class="active"><a href="/">ホーム</a></li>
                <li><a href="/article">インタビュー記事一覧</a></li>
{{--                <li><a href="/article">求人一覧</a></li>--}}
{{--                <li><a href="/article">お問い合わせ</a></li>--}}
            </ul>
        </div>
    </div>
</div>
@yield('content')

<!-- Footer Menu Section Starts -->
<div class="container-fluid bg-footer-menu-home">
    <div class="row">
        <div class="col-12">
            <ul class="footer-menu-listing-home">
                <li><a href="/">ホーム</a></li>
                <li><a href="/article">記事一覧</a></li>
{{--                <li><a href="/article">求人一覧</a></li>--}}
{{--                <li><a href="/article">お問い合せ</a></li>--}}
            </ul>
        </div>
    </div>
</div>
<!-- Footer Menu Section Ends -->
<!-- Footer Section Starts -->
<div class="container-fluid bg-footer-home">
    <div class="row">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-logo-home">
                        <a href="/">
                            <img src="{{ asset('/images/logo.png') }}" class="img-fluid" alt="" />
                        </a>
                    </div>
                    <ul class="footer-listing-home">
                        <li><a href="#">プライバシーポリシー</a></li>
                        <li><a href="#">運営会社</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer Section Ends -->
<!-- Copyright Section Starts -->
<div class="container-fluid bg-copyright-home">
    <div class="row">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="copyright-info">
                        <p>Copyright <span>&copy;</span>2020 All Rights Reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Copyright Section Ends -->
<!-- jQuery Library -->
<script src="{{ asset('js/jquery.min.js') }}"></script>
<!-- Main JS -->
<script src="{{ asset('js/main.js') }}"></script>
<!-- Custom Select Dropdown JS -->
{{--<script src="{{ asset('js/custom-select-dropdown.js') }}"></script>--}}
</body>
</html>
