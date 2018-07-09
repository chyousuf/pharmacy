<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Validator;
class login extends Controller
{
    public function registor(Request $request){
        header("Content-type:application/json");
        $user = new User();
        $pharmacy_name = Input::post('pharmacy_name');
        if(!$pharmacy_name){

            return response(['status'=>'failure','code'=>'Missing Pharmacy name'], 200);

        }
        $email = Input::post('email');
        if(!$email){
            return response(['status'=>'failure','code'=>'Missing Email'], 200);
        }




        $password = Input::post('password');
        if(!$password){
            return response(['status'=>'failure','code'=>'Missing Password'], 200);
        }
        $contact_details = Input::post('contact_details');
        if(!$contact_details){
            return response(['status'=>'failure','code'=>'Missing contact_details'], 200);
        }
        $location = Input::post('location');
        if(!$location){
            return response(['status'=>'failure','code'=>'Missing location'], 200);
        }



        $user->pharmacy_name = $pharmacy_name;
        $user->email = $email;
        $user->password = $password;
        $user->contact_details = $contact_details;
        $user->location = $location;
        $user->lat = Input::post('lat');
        $user->lng = Input::post('lng');
        $user->save();
        return response(['status'=>'success','Code'=>'Pharmacy Register'], 200);



    }

    public function loginaccount(Request $request){
        header("Content-type:application/json");
        $email = Input::post('email');
        if(!$email){
            return response(['status'=>'failure','code'=>'Missing Email'], 200);
        }
        $password = Input::post('password');
        if(!$password){
            return response(['status'=>'failure','code'=>'Missing Password'], 200);
        }


       if(User::where('email',$email)->where('password',$password)->count() > 0){
           return response(['status'=>'success','Code'=>'Login successfully'], 200);

       }else {
           return response(['status'=>'success','Code'=>'Email or password not match'], 200);
       }
    }


    public function  resetpassword(Request $request){
        header("Content-type:application/json");
        $email = Input::post('email');
        if(!$email){
            return response(['status'=>'failure','code'=>'Missing Email'], 200);
        }

        if(User::where('email',$email)->count() > 0){
            $pass = User::where('email',$email)->get();
            return response(['status'=>'success','data'=>$pass[0]->password], 200);

        }else {
            return response(['status'=>'success','Code'=>'Email not match'], 200);
        }
    }







}
