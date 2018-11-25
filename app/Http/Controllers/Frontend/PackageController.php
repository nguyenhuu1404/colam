<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Package;

class PackageController extends Controller
{
    public function combo(){
        echo 1;
    }
    public function getCombo(){
        return response()->json([

        ]);
    }
    public function getPackages(Request $request){
        $type = $request->input('type');
        if ($request->ajax() && isset($type)) {
            $packages = Package::where(['type' => $type, 'status' => 1])->get()->toArray();
            $dataPackages = [];
            if(count($packages) > 0){
                foreach($packages as $package){
                    if($package['course_type'] !== null){
                        $dataPackages[$package['course_type']][] = $package;
                    }else{
                        $dataPackages = $packages;
                    }
                }
            }
            return response()->json($dataPackages);

        }

    }
}
