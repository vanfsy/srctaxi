<?php


namespace App\Admin\Controllers;

use App\City;
use App\Http\Controllers\Controller;

use App\Pref;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CompanyController extends AdminController
{
    /**
     * {@inheritdoc}
     */
    protected function title()
    {
        return trans('admin.company');
    }

    /**
     *
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $companyModel = config('admin.database.companies_model');

        $grid = new Grid(new $companyModel());

        $grid->column('id', 'ID')->sortable();
        $grid->column('title', trans('admin.title'));
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

//        $grid->actions(function (Grid\Displayers\Actions $actions) {
//            if ($actions->getKey() == 1) {
//                $actions->disableDelete();
//            }
//        });


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
        $companyModel = config('admin.database.companies_model');

        $form = new Form(new $companyModel());

        $form->display('id', 'ID');
        $form->text('title', trans('admin.title'))->rules('required');

        $form->textarea('description', trans('admin.description'))->rules('required');
        $form->textarea('appeal', trans('admin.appeal'))->rules('required');
        $form->image('image', trans('admin.image'))->rules('required');
        $form->textarea('business_description', trans('admin.business_description'))->rules('required');
        $form->textarea('requirement', trans('admin.requirement'))->rules('required');
        $form->textarea('employment', trans('admin.employment'))->rules('required');
        $form->textarea('qualification', trans('admin.qualification'))->rules('required');

        $form->select('pref_id', trans('admin.pref'))
            ->options(\App\Pref::all()->pluck('name','id'))
            ->load('city_id','/admin/api/cities', 'id', 'name')
            ->rules('required')
            ->value(request('pref_id'));

        $form->select('city_id', trans('admin.city'))
            ->options(function ($id) {
                return \App\City::options($id);
            })
            ->rules('required');

        $form->text('address', trans('admin.address'))->rules('required');
        $form->textarea('access', trans('admin.access'))->rules('required');
        $form->text('phone', trans('admin.phone'))->rules('required|regex:/^[0-9]{2,4}-[0-9]{2,4}-[0-9]{3,4}$/');

        $form->textarea('business_time', trans('admin.business_time'))->rules('required');
        $form->textarea('wage_sys', trans('admin.wage_sys'))->rules('required');
        $form->textarea('salary', trans('admin.salary'))->rules('required');
        $form->textarea('treatment', trans('admin.treatment'))->rules('required');
        $form->textarea('holiday', trans('admin.holiday'))->rules('required');
        $form->textarea('lending_sys', trans('admin.lending_sys'))->rules('required');

        $form->display('created_at', trans('admin.created_at'));
        $form->display('updated_at', trans('admin.updated_at'));

        return $form;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     *
     * @return Show
     */
    protected function detail($id)
    {
        $companyModel = config('admin.database.companies_model');

        $show = new Show($companyModel::findOrFail($id));

        $show->field('id', 'ID');
        $show->field('title', trans('admin.title'));
        $show->field('description', trans('admin.description'));
        $show->field('appeal', trans('admin.appeal'));
        $show->field('image', trans('admin.image'))->image();
        $show->field('business_description', trans('admin.business_description'));
        $show->field('requirement', trans('admin.requirement'));
        $show->field('employment', trans('admin.employment'));
        $show->field('qualification', trans('admin.qualification'));
        $show->field('pref', trans('admin.pref'))->as(function ($pref) {
            return $pref->name;
        });
        $show->field('city', trans('admin.city'))->as(function ($city) {
            return $city->name;
        });
        $show->field('address', trans('admin.address'));
        $show->field('access', trans('admin.access'));
        $show->field('phone', trans('admin.phone'));
        $show->field('business_time', trans('admin.business_time'));
        $show->field('wage_sys', trans('admin.wage_sys'));
        $show->field('salary', trans('admin.salary'));
        $show->field('treatment', trans('admin.treatment'));
        $show->field('holiday', trans('admin.holiday'));
        $show->field('lending_sys', trans('admin.lending_sys'));


        $show->field('created_at', trans('admin.created_at'));
        $show->field('updated_at', trans('admin.updated_at'));

        return $show;
    }


    public function apiCities() {
        $pref = $_GET['q'] ? $_GET['q'] : 0;

        if ($pref) {
            $objPref = Pref::find($pref);

            $citiesArray = $objPref->cities()->pluck('name', 'id');

            $ret = array();
            foreach ($citiesArray as $key => $val) {
                $ret[] = array(
                    'id' => $key,
                    'name' => $val
                );
            }

            return $ret;
        } else {
            return [];
        }
    }
}
