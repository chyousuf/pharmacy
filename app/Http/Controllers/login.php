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

            return response(['status'=>'false','code'=>'Missing Pharmacy name'], 200);

        }
        $email = Input::post('email');
        if(!$email){
            return response(['status'=>'false','code'=>'Missing Email'], 200);
        }
        if(User::where('email',$email)->count() > 0){
            return response(['status'=>'false','Code'=>'Duplicate Email'], 200);
        }


        $password = Input::post('password');
        if(!$password){
            return response(['status'=>'false','code'=>'Missing Password'], 200);
        }
        $contact_details = Input::post('contact_details');
        if(!$contact_details){
            return response(['status'=>'false','code'=>'Missing contact_details'], 200);
        }
        $location = Input::post('location');
        if(!$location){
            return response(['status'=>'false','code'=>'Missing location'], 200);
        }



        $user->pharmacy_name = $pharmacy_name;
        $user->email = $email;
        $user->password = $password;
        $user->contact_details = $contact_details;
        $user->location = $location;
        $user->lat = Input::post('lat');
        $user->lng = Input::post('lng');
        $user->save();

        $user_data = User::where('email',$email)->get();
        return response(['status'=>'true','Code'=>'Pharmacy Register','data'=>$user_data], 200);



    }

    public function loginaccount(Request $request){
        header("Content-type:application/json");
        $email = Input::post('email');
        if(!$email){
            return response(['status'=>'false','code'=>'Missing Email'], 200);
        }
        $password = Input::post('password');
        if(!$password){
            return response(['status'=>'false','code'=>'Missing Password'], 200);
        }


       if(User::where('email',$email)->where('password',$password)->count() > 0){
           $user_data = User::where('email',$email)->get();
           return response(['status'=>'true','Code'=>'Login successfully','data'=>$user_data], 200);

       }else {
           return response(['status'=>'false','Code'=>'Email or password not match'], 200);
       }
    }


    public function  resetpassword(Request $request){
        header("Content-type:application/json");
        $email = Input::post('email');
        if(!$email){
            return response(['status'=>'false','code'=>'Missing Email'], 200);
        }

        if(User::where('email',$email)->count() > 0){
            $pass = User::where('email',$email)->get();
            return response(['status'=>'true','data'=>$pass[0]->password], 200);

        }else {
            return response(['status'=>'false','Code'=>'Email not match'], 200);
        }
    }


    public  function updateuser(Request $request){


        $user_id = Input::post('user_id');
        if(!$user_id){

            return response(['status'=>'false','code'=>'Missing User Id'], 200);

        }
        $pharmacy_name = Input::post('pharmacy_name');
        $email = Input::post('email');
        $password = Input::post('password');
        $contact_details = Input::post('contact_details');
        $location = Input::post('location');


         $update = User::where('id', $user_id)  // find your user by their email
            ->limit(1)  // optional - to ensure only one record is updated.
            ->update(array('pharmacy_name' => $pharmacy_name,'email'=>$email,'password'=> $password,'contact_details'=>$contact_details,'location'=> $location));

         if ($update > 0){

             $pass = User::where('id',$user_id)->get();
             return response(['status'=>'true','data'=>$pass], 200);

         }else {
             return response(['status'=>'false','Code'=>'Upload failure'], 200);
         }
    }







}
