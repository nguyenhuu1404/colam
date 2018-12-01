<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Package;
use App\Course;

class PackageController extends Controller
{
    public function combo($packageId){
        $data['package'] = Package::where('id', $packageId)->first()->toArray();
        $data['courses'] = Package::find($packageId)->courses()->get()->toArray();
        //dd($data);
        return view('frontend.packages.combo', $data);
    }
    public function index(){

        $data['title'] = 'Các khóa học';
        $data['courses'] = Course::where(['status' => 1])->get()->toArray();
        $data['comboPackages'] = Package::where('status', '1')->get()->toArray();
        return view('frontend.packages.index', $data);
    }
    public function myPackage() {
        return view('frontend.packages.mypackage');
    }

    public function getComboPackages(Request $request){

        if ($request->ajax()) {
            $packages = Package::where(['status' => 1])->get()->toArray();
            $data['courseTypes'] = config('app.courseTypes');
            $data['comboPackages'] = $packages;
            return view('frontend.ajax.combopackage', $data);

        }

    }
}
