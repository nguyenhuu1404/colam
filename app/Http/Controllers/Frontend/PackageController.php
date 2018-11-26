<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Package;

class PackageController extends Controller
{
    public function combo(){
        return view('frontend.packages.combo');
    }
    public function index(){
        return view('frontend.packages.index');
    }
    public function myPackage() {
        return view('frontend.packages.mypackage');
    }
    public function getSinglePackages(Request $request){
        $type = $request->input('type');
        if ($request->ajax() && isset($type)) {
            $packages = Package::where(['type' => $type, 'status' => 1])->get()->toArray();
            $dataPackages = [];
            if(count($packages) > 0){
                foreach($packages as $package){
                    if($package['course_type'] !== null){
                        $dataPackages[$package['course_type']][] = $package;
                    }
                }
            }
            $data['courseTypes'] = config('app.courseTypes');
            $data['singlePackages'] = $dataPackages;
            return view('frontend.ajax.singlepackage', $data);

        }

    }
    public function getComboPackages(Request $request){
        $type = $request->input('type');
        if ($request->ajax() && isset($type)) {
            $packages = Package::where(['type' => $type, 'status' => 1])->get()->toArray();
            $data['courseTypes'] = config('app.courseTypes');
            $data['comboPackages'] = $packages;
            return view('frontend.ajax.combopackage', $data);

        }

    }
}
