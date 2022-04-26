<?php

namespace app\api\model;

use think\Model;

class Department extends Model
{

    /**
     * 获取学院和学院下的相应的专业列表
     * @return Department[]|\think\Collection
     */
    public static function queryDepartmentAndMajor()
    {
        return self::with("major")->select();
    }

    /**
     * 关联预载入专业类，使得学院和专业进行关联与载入
     * @return \think\model\relation\HasMany
     */
    public function major()
    {
        return $this->hasMany('Major', 'department_id', 'id');
    }

}