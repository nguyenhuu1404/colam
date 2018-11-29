<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Package;

class PackageController extends Controller
{
    public function combo($packageId){
        $data['package'] = Package::where('id', $packageId)->first()->toArray();
        $data['courses'] = Package::find($packageId)->courses()->get()->toArray();
        //dd($data);
        return view('frontend.packages.combo', $data);
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
            if(count($singlePackages) > 0){
                foreach($singlePackages as $package){
                    if($package['course_type'] !== null){
                        $courseId = DB::table('packages')
                        ->join('course_package', 'packages.id', '=', 'course_package.package_id')
                        ->where('packages.id', $package['id'])
                        ->select('course_package.course_id')
                        ->get()->first();
                        $package['course_id'] = $courseId->course_id;
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
