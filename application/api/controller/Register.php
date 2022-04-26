<?php

namespace app\api\controller;

use app\api\model\Classes;
use app\api\model\Department;
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

    /**
     * 获取学院和相应专业列表
     * @return \think\response\Json
     */
    public function getDepartmentList()
    {
        $result = Department::queryDepartmentAndMajor();
        return success($result);
    }

    /**
     * 根据专业id返回相应的班级
     * @return \think\response\Json
     */
    public function getClassList()
    {
        // 获取前端传过来的专业id，判断是否有传并且不为空
        $majorId = input("?get.major_id") ? input("get.major_id") : 0;
        if (!$majorId) {
            return fail(INVALID_PARAMS, '请选择专业id');
        }
        $result = Classes::queryListByMajorId($majorId);
        return success($result);
    }

}