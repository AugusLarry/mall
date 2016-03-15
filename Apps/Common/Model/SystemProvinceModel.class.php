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
        if (!$this->create($d)) {
            return false;
        } else {
            //如果数据库中已有相同名称省份
            if ($this->getByName($d['province_name'])) {
                return false;
            } else {
                $this->dateline = NOW_TIME;
                $this->add();
            }
        }
        return true;
    }
    //修改省份数据处理
    public function edit ($d) {
        if (!$this->create($d)) {
            return false;
        } else {
            if (!isset($d['province_id']) || !$this->find($d['province_id'])) {
                return false;
            } else {
                $this->save($d);
            }
        }
        return true;
    }
}