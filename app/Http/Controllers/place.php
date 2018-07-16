<?php

namespace App\Http\Controllers;

use App\pharmacy;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;

class place extends Controller
{

    public function insert()
    {

        $place_array = array();
        $place_response_data = array();
        $lat = Input::post('lat');
        if (!$lat) {
            return response(['status' => 'false', 'code' => 'Missing lat'], 200);
        }
        $lng = Input::post('lng');
        if (!$lng) {
            return response(['status' => 'false', 'code' => 'Missing lng'], 200);
        }
        $user_id = Input::post('user_id');


        $json = file_get_contents('https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=' . $lat . ',' . $lng . '&radius=1000&type=pharmacy&key=AIzaSyAiTFG3KiPlIH3-aW9zraJ749cEU8yuA7M');
        $obj = json_decode($json);
        $count = count($obj->results);

        if ($count != 0) {
            for ($i = 0; $i < $count; $i++) {
                $place_name = $obj->results[$i]->name;
                $place_id = $obj->results[$i]->place_id;

                $place_lat = $obj->results[$i]->geometry->location->lat;
                $place_lng = $obj->results[$i]->geometry->location->lng;
                $place_array[$i] = $place_id;
                $place_data = DB::table('pharmacies')->select("place_id")->where('place_id', $place_id)->get();
                $place_count = count($place_data);

                if ($place_count > 0) {
                    if ($place_id != $place_data[0]->place_id) {
                        $place = new pharmacy();
                        $place->place_id = $place_id;
                        $place->place_name = $place_name;
                        $place->place_lat = $place_lat;
                        $place->place_lng = $place_lng;
                        $place->user_id = $user_id;
                        $place->save();
                        echo 'ok';

                    }
                } else {
                    $place = new pharmacy();
                    $place->place_id = $place_id;
                    $place->place_name = $place_name;
                    $place->place_lat = $place_lat;
                    $place->place_lng = $place_lng;
                    $place->user_id = $user_id;
                    $place->save();
                    echo 'ok1';

                }
            }


            //var_dump($place_array);

            $count1 = count($place_array);
            for ($i = 0; $i < $count1; $i++) {

                $json = file_get_contents('https://maps.googleapis.com/maps/api/place/details/json?placeid=' . $place_array[$i] . '&key=AIzaSyAiTFG3KiPlIH3-aW9zraJ749cEU8yuA7M');
                $obj1 = json_decode($json);
                if (isset($obj1->result->formatted_phone_number)) {
                    $place_address = $obj1->result->formatted_address;
                    $place_phone = $obj1->result->formatted_phone_number;

                } else {
                    $place_address = $obj1->result->formatted_address;
                    $place_phone = null;
                }
                $upload = pharmacy::where('place_id', $place_array[$i])->limit(1)->update(['place_address' => $place_address, 'place_number' => $place_phone]);
                $place_data = pharmacy::where('place_id', $place_array[$i])->get();

                $place_response_data[$i] = $place_data;

            }
            if ($upload > 0) {

                return response(['status' => 'true', 'result' => $place_response_data], 200);
            } else {
                return response(['status' => 'false', 'code' => "Not Save"], 200);
            }

        } else {

            return response(['status' => 'false', 'code' => "No data found at this lat lng"], 200);

        }

    }


    public function searchplace()
    {
        $place_name = Input::post('place_name');
        if (!$place_name) {
            return response(['status' => 'false', 'code' => 'Missing place_name'], 200);
        }


        $search = pharmacy::where('place_name', 'LIKE', "%$place_name%")->get();
        $count = count($search);

        if ($count > 0) {

            return response(['status' => 'true', 'result' => $search], 200);
        } else {
            return response(['status' => 'false', 'code' => "Not Data"], 200);
        }
    }


    public function countclick()
    {
        $pharmacy_id = Input::post('pharmacy_id');
        if (!$pharmacy_id) {

            return response(['status' => 'false', 'code' => 'Missing User Id'], 200);

        }
        $pharmacy = pharmacy::where('id', $pharmacy_id)->get();

        $count = $pharmacy[0]->count;
        $total_count = $count + 1;
        $update = pharmacy::where('id', $pharmacy_id)->update(['count' => $total_count]);

        if ($update > 0) {

            return response(['status' => 'true', 'data' => 'Count Update'], 200);

        } else {
            return response(['status' => 'false', 'Code' => 'Upload failure'], 200);
        }

    }


}
