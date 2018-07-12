<?php

namespace App\Http\Controllers;

use App\pharmacy;

class place extends Controller
{

    public function insert()
    {
        $place_datas = pharmacy::all();

        $json = file_get_contents('https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=31.4682768,74.3175462&radius=1000000&type=pharmacy&key=AIzaSyAiTFG3KiPlIH3-aW9zraJ749cEU8yuA7M');
        $obj = json_decode($json);
        $count = count($obj->results);
        for ($i = 0; $i < $count; $i++) {
            $place_name = $obj->results[$i]->name;
            $place_id = $obj->results[$i]->place_id;
            $place_lat = $obj->results[$i]->geometry->location->lat;
            $place_lng = $obj->results[$i]->geometry->location->lng;
            if( $place_datas[$i]["place_id"] != $place_id ) {
                $place = new pharmacy();
                $place->place_id = $place_id;
                $place->place_name = $place_name;
                $place->place_lat = $place_lat;
                $place->place_lng = $place_lng;
                $place->save();
            }
        }
        $place_data = pharmacy::all();
        $count1 = count($place_data);
        for ($i = 0; $i < $count1; $i++) {

            $json = file_get_contents('https://maps.googleapis.com/maps/api/place/details/json?placeid=' . $place_data[$i]["place_id"] . '&key=AIzaSyAiTFG3KiPlIH3-aW9zraJ749cEU8yuA7M');
            $obj1 = json_decode($json);
            if (isset($obj1->result->formatted_phone_number)) {
                $place_address = $obj1->result->formatted_address;
                $place_phone = $obj1->result->formatted_phone_number;

            } else {
                $place_address = $obj1->result->formatted_address;
                $place_phone = null;
            }
            $upload = pharmacy::where('place_id', $place_data[$i]["place_id"])->limit(1)->update(['place_address' => $place_address, 'place_number' => $place_phone]);
        }
        if ($upload > 0) {
            return response(['status' => 'true', 'code' => "Save"], 200);
        } else {
            return response(['status' => 'false', 'code' => "Not Save"], 200);
        }
    }
}
