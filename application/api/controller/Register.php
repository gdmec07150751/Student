<?php

namespace app\api\controller;

use think\Controller;

class Register extends Controller
{
    /**
     * 用户注册
     * @return \think\response\Json
     */
    public function index()
    {
        // 通过框架定义的助手函数判断是否post请求，如果不是的话返回无效请求
        if (!request()->isPost()) {
            return fail(INVALID_REQUEST, '无效的请求');
        }

        return success([]);
    }

}