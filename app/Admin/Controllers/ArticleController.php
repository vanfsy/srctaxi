<?php


namespace App\Admin\Controllers;

use App\City;
use App\Http\Controllers\Controller;

use App\Pref;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ArticleController extends AdminController
{
    /**
     * {@inheritdoc}
     */
    protected function title()
    {
        return trans('admin.article');
    }

    /**
     *
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $articleModel = config('admin.database.articles_model');

        $grid = new Grid(new $articleModel());

        $grid->column('id', 'ID')->sortable();
        $grid->column('title', trans('admin.title'));
        $grid->column('user_name', trans('admin.user_name'));
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->tools(function (Grid\Tools $tools) {
            $tools->batch(function (Grid\Tools\BatchActions $actions) {
                $actions->disableDelete();
            });
        });

        return $grid;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    public function form()
    {
        $articleModel = config('admin.database.articles_model');

        $form = new Form(new $articleModel());

        $form->display('id', 'ID');
        $form->text('title', trans('admin.title'))->rules('required');
        $form->image('image', trans('admin.image'))->rules('required');
//        $form->file('file', trans('admin.file'))->rules('required');
        $form->file('file', trans('admin.file'));

        $form->select('category', trans('admin.category'))
            ->options(\Config::get('const.arrArticleCategory'))->rules('required');

        $form->text('user_name', trans('admin.user_name'))->rules('required');
        $form->text('user_age', trans('admin.user_age'))->rules('required');
//        $form->text('user_job', trans('admin.user_job'))->rules('required');

        $arrJobs = array('タクシー乗務員' => 'タクシー乗務員', 'ハイヤー乗務員' => 'ハイヤー乗務員', '社長' => '社長', '採用担当者' => '採用担当者', '運行管理者' => '運行管理者');
        $form->select('user_job', trans('admin.user_job'))
            ->options($arrJobs)->rules('required');


        $form->select('company_id', trans('admin.company'))
            ->options(\App\Company::all()->pluck('title','id'))->rules('required');

        $form->text('title1', trans('admin.title1'));
//        $form->textarea('content1', trans('admin.content1'));
        $form->html('content1', trans('admin.content1'));

        $form->text('title2', trans('admin.title2'));
        $form->textarea('content2', trans('admin.content2'));
        $form->text('title3', trans('admin.title3'));
        $form->textarea('content3', trans('admin.content3'));
        $form->text('title4', trans('admin.title4'));
        $form->textarea('content4', trans('admin.content4'));
        $form->text('title5', trans('admin.title5'));
        $form->textarea('content5', trans('admin.content5'));

        $form->display('created_at', trans('admin.created_at'));
        $form->display('updated_at', trans('admin.updated_at'));

        return $form;
    }

    public function detail($id)
    {
        $articleModel = config('admin.database.articles_model');

        $show = new Show($articleModel::findOrFail($id));

        $show->field('id', 'ID');
        $show->field('title', trans('admin.title'));
        $show->field('category', trans('admin.category'));

        $show->field('image', trans('admin.image'))->image();
        $show->field('file', trans('admin.file'))->file();
        $show->field('user_name', trans('admin.user_name'));
        $show->field('user_age', trans('admin.user_age'));
        $show->field('user_job', trans('admin.user_job'));

        $show->field('company', trans('admin.company'))->as(function ($company) {
            return $company->title;
        });

        $show->field('title1', trans('admin.title1'));
        $show->field('content1', trans('admin.content1'));
        $show->field('title2', trans('admin.title2'));
        $show->field('content2', trans('admin.content2'));
        $show->field('title3', trans('admin.title3'));
        $show->field('content3', trans('admin.content3'));
        $show->field('title4', trans('admin.title4'));
        $show->field('content4', trans('admin.content4'));
        $show->field('title5', trans('admin.title5'));
        $show->field('content5', trans('admin.content5'));

        $show->field('created_at', trans('admin.created_at'));
        $show->field('updated_at', trans('admin.updated_at'));

        return $show;
    }
}
