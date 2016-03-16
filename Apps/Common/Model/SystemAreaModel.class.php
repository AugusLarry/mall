<?php
    /**
     * User: Larry<resinchem@qq.com>
     * Date: 2016/3/16
     * Time: 17:40
     */
namespace Common\Model;
use Think\Model;
class SystemAreaModel extends Model {
    //定义主键
    protected $pk = "area_id";
    //定义字段及其类型
    protected $fields = [
        'area_id', 'city_id', 'area_name', 'orderby', 'dateline',
        '_type' => [
            'area_id'   => 'mediumint',
            'city_id'   => 'smallint',
            'area_name' => 'varchar',
            'orderby'   => 'smallint',
            'dateline'  => 'int'
        ]
    ];
    //添加地区数据处理
    public function areaSave ($d) {
        //验证数据类型 || 名称不存在
        if (!$this->create($d) || !($area_names = preg_replace("/[\r\n]+/", "\n", $d['area_name']))) {
            return false;
        } else {
            $data = [];
            foreach (explode("\n", $area_names) as $area_name) {
                //过滤已存在的地区
                if (!$this->where(["area_name" => $area_name, "city_id" => $d['city_id']])->select()) {
                    $d['area_name'] = $area_name;
                    $d['dateline'] = NOW_TIME;
                    $data[] = $d;
                }
            }
            $result = $this->addAll($data);
            if (!$result) return false;
            return true;
        }
    }
    //修改地区数据处理
    public function edit ($d) {
        //验证数据 || city_id不存在 || city_id错误
        if (!$this->create($d) || !isset($d['area_id']) || !$this->find($d['area_id'])) {
            return false;
        } else {
            $result = $this->save($d);
            if (!$result) return false;
            return true;
        }
    }
}