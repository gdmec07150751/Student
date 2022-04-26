<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件

function success($data)
{
    return json(['return_code' => SUCCESS_CODE, 'return_msg' => 'OK', 'data' => $data]);
}

function fail($returnCode, $data)
{
    return json(['return_code' => $returnCode, 'return_msg' => $data, 'data' => '']);
}