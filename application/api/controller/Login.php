<?php

namespace app\api\controller;

use think\Controller;

class Login extends Controller
{

    public function index()
    {
        if (!request()->isPost()) {
            return fail(INVALID_REQUEST, '无效的请求');
        }


    }

}