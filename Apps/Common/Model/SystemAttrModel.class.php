<?php
    /**
     * User: Larry<resinchem@qq.com>
     * Date: 2016/3/16
     * Time: 22:41
     */
namespace Common\Model;
use Think\Model;
class SystemAttrModel extends Model {
	//定义主键
    protected $pk = "attr_id";
    //定义字段及其类型
    protected $fields = [
        'attr_id', 'title', 'from_id', 'multi', 'filter', 'orderby',
        '_type' => [
            'attr_id' => 'smallint',
            'title'   => 'varchar',
            'from_id' => 'smallint',
            'multi'   => 'enum',
            'filter'  => 'enum',
            'orderby' => 'smallint',
        ]
    ];
    //添加属性数据处理
    public function attrSave ($d) {
        //验证数据 || 相同名称
        if (!$this->create($d) || $this->where(["title" => $d["title"]])->select()) {
            return false;
        } else {
            $result = $this->add($d);
            if (!$result) return false;
            return true;
        }
    }
    //修改属性数据处理
    public function attrEdit ($d) {
        p($d);die;
    }
}