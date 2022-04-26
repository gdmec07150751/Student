<?php

namespace app\api\controller;

use app\api\model\User;
use think\Controller;

class Login extends Controller
{

    public function index()
    {
        if (!request()->isPost()) {
            return fail(INVALID_REQUEST, '无效的请求');
        }

        $info = input("post.");
        $user = User::where('username',$info['username'])->where('password',md5($info['password']))->find();
        $token = md5($user.salt);
        if($user){
            return success($user);
        }else{
            return fail(PASSWORD_ERROR, '密码错误');
        }


    }

}