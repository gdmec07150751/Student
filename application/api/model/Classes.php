<?php

namespace app\api\model;

use think\Model;

class Classes extends Model
{

    protected $table = "stu_class";

    /**
     * 根据传的专业id返回数据层相应的班级列表
     * @param $majorId 所属专业id
     * @return Classes[]|\think\Collection
     */
    public static function queryListByMajorId($majorId)
    {
        return self::where('major_id', $majorId)->select();
    }

}