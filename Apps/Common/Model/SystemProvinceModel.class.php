<?php
    /**
     * User: Larry<resinchem@qq.com>
     * Date: 2016/3/15
     * Time: 21:36
     */
namespace Common\Model;
use Think\Model;
class SystemProvinceModel extends Model {
    //定义主键
    protected $pk = "province_id";
    //定义字段及其类型
    protected $fields = [
        'province_id', 'province_name', 'orderby', 'dateline',
        '_type' => [
            'province_id' => 'smallint',
            'province_name' => 'varchar',
            'orderby' => 'smallint',
            'dateline' => 'int'
        ]
    ];
    //添加省份数据处理
    public function provinceSave ($d) {
        //验证数据 || 相同名称
        if (!$this->create($d) || $this->where(["province_name" => $d["province_name"]])->select()) {
            return false;
        } else {
            $d["dateline"] = NOW_TIME;
            $result = $this->add($d);
            if (!$result) return false;
            return true;
        }
    }
    //修改省份数据处理
    public function edit ($d) {
        //验证数据 || province_id不存在 || province_id错误
        if (!$this->create($d) || !isset($d['province_id']) || !$this->find($d['province_id'])) {
            return false;
        } else {
            $result = $this->save($d);
            if (!$result) return false;
            return true;
        }
    }
}