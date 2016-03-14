<?php
    /**
     * User: Larry<resinchem@qq.com>
     * Date: 2016/3/14
     * Time: 13:09
     */
namespace Common\Model;
use Think\Model;
class SystemConfigModel extends Model {
    //定义主键
    protected $pk = "k";
    //定义字段及其类型
    protected $fields = [
        'k', 'v', 'title', 'dateline',
        '_type' => [
            'k' => 'varchar',
            'v' => 'mediumtext',
            'title' => 'varchar',
            'dateline' => 'int'
        ]
    ];
    //对提交过来的数据进行处理
    public function checkPost ($d) {
        $result = $this->find($d['K']);
        $data = [
            'k' => $d['K'],
            'v' => serialize($d['config']),
            'title' => $d['title']
        ];
        //如果验证失败，返回信息
        if (!$this->create($data)) {
            return $this->getError();
        } else {
            //如果查询结果为空，则是新增
            if ($result == "") {
                $this->dateline = NOW_TIME;
                $this->add();
            } else {
                $this->save();
            }
            return true;
        }
    }
}