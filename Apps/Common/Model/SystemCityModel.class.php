<?php
    /**
     * User: Larry<resinchem@qq.com>
     * Date: 2016/3/16
     * Time: 14:28
     */
namespace Common\Model;
use Think\Model;

/**
 * Class 城市模型
 * @package Admin\Model
 */
class SystemCityModel extends Model {
    //定义主键
    protected $pk = "city_id";
    //定义字段及其类型
    protected $fields = [
        'city_id', 'province_id', 'city_name', 'pinyin', 'theme_id', 'logo', 'weixinqr', 'phone', 'mobile', 'mail', 'kfqq', 'seo_title', 'seo_keywords', 'seo_description', 'tongji', 'orderby', 'audit', 'dateline',
        '_type' => [
            'city_id'         => 'mediumint',
            'province_id'     => 'smallint',
            'city_name'       => 'varchar',
            'pinyin'          => 'varchar',
            'theme_id'        => 'smallint',
            'logo'            => 'varchar',
            'weixinqr'        => 'varchar',
            'phone'           => 'varchar',
            'mobile'          => 'varchar',
            'mail'            => 'varchar',
            'kfqq'            => 'varchar',
            'seo_title'       => 'varchar',
            'seo_keywords'    => 'varchar',
            'seo_description' => 'varchar',
            'tongji'          => 'mediumtext',
            'orderby'         => 'smallint',
            'audit'           => 'tinyint',
            'dateline'        => 'int'
        ]
    ];
    //添加城市数据处理
    public function citySave ($d) {
        //验证数据类型 || 相同名称 || 省份id
        if (!$this->create($d) || $this->where(["city_name" => $d["city_name"]])->select() || $d["province_id"] == "") {
            return false;
        } else {
            $d['dateline'] = NOW_TIME;
            $result = $this->add($d);
            if (!$result) return false;
            return true;
        }
    }
    //修改城市数据处理
    public function edit ($d) {
        //验证数据 || city_id不存在 || city_id错误
        if (!$this->create($d) || !isset($d['city_id']) || !$this->find($d['city_id'])) {
            return false;
        } else {
            $result = $this->save($d);
            if (!$result) return false;
            return true;
        }
    }
}