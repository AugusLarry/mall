<?php
    /**
     * User: Larry<resinchem@qq.com>
     * Date: 2016/3/16
     * Time: 17:40
     */
namespace Common\Model;
use Think\Model;
class SystemAttrFromModel extends Model {
	//定义主键
    protected $pk = "from_id";
    //定义字段及其类型
    protected $fields = [
        'from_id', 'from', 'title',
        '_type' => [
			'from_id' => 'smallint',
			'from'    => 'varchar',
			'title'   => 'varchar',
        ]
    ];
    //添加属性分类数据处理
    public function attrfromSave ($d) {
    	//验证数据 || 相同来源KEY
        if (!$this->create($d) || $this->where(["from" => $d["from"]])->select()) {
            return false;
        } else {
            $result = $this->add($d);
            if (!$result) return false;
            return true;
        }
    }
    //修改属性分类数据处理
    public function edit ($d) {
    	//验证数据 || from_id不存在 || from_id错误
        if (!$this->create($d) || !isset($d['from_id']) || !$this->find($d['from_id'])) {
            return false;
        } else {
            $result = $this->save($d);
            if (!$result) return false;
            return true;
        }
    }
}