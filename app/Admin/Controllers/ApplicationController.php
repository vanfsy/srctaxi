<?php


namespace App\Admin\Controllers;

use App\City;
use App\Http\Controllers\Controller;

use App\Pref;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ApplicationController extends AdminController
{
    /**
     * {@inheritdoc}
     */
    protected function title()
    {
        return trans('admin.application');
    }

    /**
     *
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $applicationModel = config('admin.database.applications_model');

        $grid = new Grid(new $applicationModel());
        $grid->disableCreateButton();

        $grid->column('id', 'ID')->sortable();
        $grid->column('company.title', trans('admin.company'));
        $grid->column('name', trans('admin.user_name_hiragana'));
        $grid->column('name_kana', trans('admin.user_name_furigana'));
        $grid->column('email', trans('admin.email'));
        $grid->column('phone', trans('admin.phone'));
        $grid->column('birthday', trans('admin.birthday'));
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->actions(function (Grid\Displayers\Actions $actions) {
            $actions->disableEdit();
        });

        return $grid;
    }

    public function detail($id)
    {
        $applicationModel = config('admin.database.applications_model');

        $show = new Show($applicationModel::findOrFail($id));

        $show->field('id', 'ID');
        $show->field('company', trans('admin.company'))->as(function ($company) {
            return $company->title;
        });
        $show->field('name', trans('admin.user_name_hiragana'));
        $show->field('name_kana', trans('admin.user_name_furigana'));
        $show->field('phone', trans('admin.phone'));
        $show->field('birthday', trans('admin.birthday'));
        $show->field('pref', trans('admin.pref'))->as(function ($pref) {
            return $pref->name;
        });
        $show->field('address', trans('admin.address'));
        $arrLicense = \Config::get('const.arrLicense');

        $show->field('license', trans('admin.license'))->as(function ($license) use($arrLicense) {
            return $arrLicense[$license];
        });
        $show->field('email', trans('admin.email'));
        $show->field('content', trans('admin.content'));

        $show->field('created_at', trans('admin.created_at'));
        $show->field('updated_at', trans('admin.updated_at'));

        return $show;
    }
}
