<?php
    /**
     * User: Larry<resinchem@qq.com>
     * Date: 2016/3/16
     * Time: 12:01
     */
namespace Admin\Widget;
use Think\Controller;
class DataWidget extends Controller {

    /**
     * @param $city_id     城市ID
     * @param $type        输出模板类型(checkbox,radio,text,option)
     */
    public function province ($city_id, $type) {
        if (isset($type)) {
            $tpl = "Widget:".$type;
        } else {
            $tpl = "Widget:option";
        }
        if (isset($city_id)) {
            $province_id = M("SystemCity")->where(["city_id" => $city_id])->getField("province_id");
            $this->assign("province_id", $province_id);
        }
        $data = M("SystemProvince")->order("orderby")->select();
        $this->assign("data", $data);
        $this->display($tpl);
    }

    /**
     * @param $province_id 省份ID
     * @param $fields      查询字段(字符串)
     * @return mixed       返回数据
     */
    public function getProvince ($province_id, $fields) {
        if (isset($fields)) {
            $data = M("SystemProvince")->where(["province_id" => $province_id])->getField($fields);
        } else {
            $data = M("SystemProvince")->where(["province_id" => $province_id])->find();
        }
        return $data;
    }

    /**
     * @param $city_id 城市ID
     * @param $fields  查询字段(字符串)
     * @return mixed   返回数据
     */
    public function getCity ( $city_id, $fields) {
        if (isset($fields)) {
            $data = M("SystemCity")->where(["city_id" => $city_id])->getField($fields);
        } else {
            $data = M("SystemCity")->where(["city_id" => $city_id])->find();
        }
        return $data;
    }
}