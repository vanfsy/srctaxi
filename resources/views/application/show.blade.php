@extends('layouts.app')

@section('content')
    <!-- Contact Form Section Starts -->
    <div class="container-fluid bg-contact-form-cp">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-sm-10 offset-sm-1 col-md-12 offset-md-0 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
                        <div class="apply-job-heading-cp">
                            <h1>{{ $company->title }}の求人へ応募する</h1>
                        </div>

                        <div class="required-form-cp">
                            <p>必須項目*</p>
                        </div>
                        <form method="POST" action="{{ route('application.store') }}" id="createForm">
                            @csrf
                            <input type="hidden" name="company_id" value="{{ $company->id }}" />
                            <div class="form-group">
                                <label class="form-heading-cp">お名前 <span>*</span></label>
                                <input type="text" class="form-control form-control-cp" placeholder="例：山田　太郎" name="name" value="{{ old('name') }}"/>
                                @if ($errors->has('name'))
                                    <div class="error-message">{{ $errors->first('name') }}</div>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="form-heading-cp">ふりがな <span>*</span></label>
                                <input type="text" class="form-control form-control-cp" placeholder="例：やまだ　たろう" name="name_kana" value="{{ old('name_kana') }}"/>
                                @if ($errors->has('name_kana'))
                                    <div class="error-message">{{ $errors->first('name_kana') }}</div>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="form-heading-cp">電話番号 <span>*</span></label>
                                <input type="text" class="form-control form-control-cp" placeholder="例：090-1234-5678" name="phone" value="{{ old('phone') }}"/>
                                @if ($errors->has('phone'))
                                    <div class="error-message">{{ $errors->first('phone') }}</div>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="form-heading-cp">生年月日 <span>*</span></label>
                                <div class="row">
                                    <div class="col-12 flex-align-center display-block">
                                        <div class="float-left float-none-mobile mr-3">
                                            <div class="custom-selection-cp">
                                                <select class="form-control" name="year">
                                                    <?php $y = date('Y'); ?>
                                                    <?php for($year = $y - 15; $year >= $y - 100; $year--): ?>
                                                        <option value="{{ $year }}" @if(old('year') == $year) selected @endif>{{ $year }}</option>
                                                    <?php endfor; ?>

                                                </select>
                                            </div>
                                        </div>
                                        <div class="float-left float-none-mobile mr-3">
                                            <div class="ymd-display-cp">
                                                <p>年</p>
                                            </div>
                                        </div>
                                        <div class="float-left float-none-mobile mr-3">
                                            <div class="custom-selection-cp">
                                                <select class="form-control" name="month">
                                                    <?php for($month = 1; $month <=12; $month++): ?>
                                                        <option value="{{ $month }}" @if(old('month') == $month) selected @endif>{{ $month }}</option>
                                                    <?php endfor; ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="float-left float-none-mobile mr-3">
                                            <div class="ymd-display-cp">
                                                <p>月</p>
                                            </div>
                                        </div>
                                        <div class="float-left float-none-mobile mr-3">
                                            <div class="custom-selection-cp">
                                                <select class="form-control" name="day">
                                                    <?php for($day = 1; $day <= 31; $day++): ?>
                                                        <option value="{{ $day }}" @if(old('day') == $day) selected @endif>{{ $day }}</option>
                                                    <?php endfor; ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="float-left float-none-mobile mr-3">
                                            <div class="ymd-display-cp">
                                                <p>日</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="form-group">
                                <label class="form-heading-cp">性別 <span>*</span></label>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="float-left mr-3">
                                            <label class="gender-content-label">
                                                <input type="radio" name="gender" class="gender-content-radio-input" value="male" @if(old('gender') == 'male') checked @endif>
                                                <span></span>
                                                <span>男性</span>
                                            </label>
                                        </div>
                                        <div class="float-left mr-3">
                                            <label class="gender-content-label">
                                                <input type="radio" name="gender" class="gender-content-radio-input" value="female" @if(old('gender') == 'male') checked @endif>
                                                <span></span>
                                                <span>女性</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                @if ($errors->has('gender'))
                                    <div class="error-message">{{ $errors->first('gender') }}</div>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="form-heading-cp">住所 <span>*</span></label>
                                <div class="row">
                                    <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                                        <div class="custom-selection-cp custom-selection-sa-cp">
                                            <select class="form-control" name="pref_id">
                                                <option value="">都道府県を選択</option>
                                                <?php foreach($pref as $key=>$val): ?>
                                                <option value="{{ $key }}" @if(old('pref_id') == $key) selected @endif>{{ $val }}</option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                @if ($errors->has('pref_id'))
                                    <div class="error-message">{{ $errors->first('pref_id') }}</div>
                                @endif

                                <div class="row">
                                    <div class="col-12">
                                        <input type="text" class="form-control form-control-cp" placeholder="市町村以下" name="address" value="{{ old('address') }}"/>
                                    </div>
                                </div>
                                @if ($errors->has('address'))
                                    <div class="error-message">{{ $errors->first('address') }}</div>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="form-heading-cp">二種免許 <span>*</span></label>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="float-left mr-3">
                                            <label class="tcl-label">
                                                <input type="radio" class="tcl-radio-input" name="license" value="1" @if(old('license') == '1') checked @endif>
                                                <span></span>
                                                <span>有り</span>
                                            </label>
                                        </div>
                                        <div class="float-left mr-3">
                                            <label class="tcl-label">
                                                <input type="radio" class="tcl-radio-input" name="license" value="0" @if(old('license') == '0') checked @endif>
                                                <span></span>
                                                <span>無し</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                @if ($errors->has('license'))
                                    <div class="error-message">{{ $errors->first('license') }}</div>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="form-heading-cp">メールアドレス <span>*</span></label>
                                <input type="text" class="form-control form-control-cp" placeholder="例：example@sample.com" name="email" value="{{ old('email') }}"/>
                                @if ($errors->has('email'))
                                    <div class="error-message">{{ $errors->first('email') }}</div>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="form-heading-cp">志望動機</label>
                                <textarea class="form-control form-control-cp" name="content">{{ old('content') }}</textarea>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="apply-here-cp">
                                        <input type="submit" class="btn-apply-cp" value="応募する" />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact Form Section Ends -->
@endsection
