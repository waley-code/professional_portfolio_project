<?php

namespace App\Http\Controllers\Demo;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DemoController extends Controller
{
    //
    public function index(){
        return view('abouts');
    }

    public function ContactMethod(){
        return view('contacts');
    }
}
