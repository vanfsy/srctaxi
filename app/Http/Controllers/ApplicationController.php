<?php


namespace App\Http\Controllers;


use App\Application;
use App\Company;
use App\Http\Controllers\Auth\RegisterController;
use App\Pref;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ApplicationController
{
    public function show($id) {
        $pref = Pref::all()->pluck('name', 'id');

        $company = Company::find($id);
        return view('application.show')->with(compact('company', 'pref'));
    }

    public function store(Request $request) {
        $data = $request->except('_token');

        $validate = [
            'name' => 'required|max:50',
            'name_kana' => 'required|max:50',
            'phone' => 'required|max:50',
            'gender' => 'required',
            'pref_id' => 'required',
            'address' => 'required',
            'license' => 'required',
            'email' => 'required|email',
//            'content' =>
        ];

        $validator = Validator::make($data, $validate);

        if ($validator->fails()) {
            return redirect()->back()->withInput()->withErrors($validator->errors());
        } else {
            $application = new Application();
            $application->name = $data['name'];
            $application->name_kana = $data['name_kana'];
            $application->company_id = $data['company_id'];
            $application->phone = $data['phone'];
            $application->birthday = date('Y-m-d', strtotime($data['year'] . '-' . $data['month'] . '-' . $data['day']));
            $application->gender = $data['gender'];
            $application->pref_id = $data['pref_id'];
            $application->address = $data['address'];
            $application->license = $data['license'];
            $application->email = $data['email'];
            $application->content = $data['content'];
            $application->save();

            return redirect(route('company.show', ['id' => $data['company_id']]));
        }
    }
}
