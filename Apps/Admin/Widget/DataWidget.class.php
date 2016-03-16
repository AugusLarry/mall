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
            $tpl = "Widget:province/".$type;
        } else {
            $tpl = "Widget:province/option";
        }
        if (isset($city_id)) {
            $province_id = M("SystemCity")->where(["city_id" => $city_id])->getField("province_id");
            $this->assign("province_id", $province_id);
        }
        $data = M("SystemProvince")->order("orderby")->select();
        $this->assign("data", $data);
        $this->display($tpl);
    }

    public function city ($area_id, $type) {
        if (isset($type)) {
            $tpl = "Widget:city/".$type;
        } else {
            $tpl = "Widget:city/option";
        }
        if (isset($area_id)) {
            $city_id = M("SystemArea")->where(["area_id" => $area_id])->getField("city_id");
            $this->assign("city_id", $city_id);
        }
        $data = M("SystemCity")->order("orderby")->select();
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
    public function getCity ($city_id, $fields) {
        if (isset($fields)) {
            $data = M("SystemCity")->where(["city_id" => $city_id])->getField($fields);
        } else {
            $data = M("SystemCity")->where(["city_id" => $city_id])->find();
        }
        return $data;
    }

    public function attrfrom ($attr_id, $type) {
        if (isset($type)) {
            $tpl = "Widget:attr/".$type;
        } else {
            $tpl = "Widget:attr/option";
        }
        if (isset($city_id)) {
            $from_id = M("SystemAttrFrom")->where(["attr_id" => $attr_id])->getField("from_id");
            $this->assign("from_id", $from_id);
        }
        $data = M("SystemAttrFrom")->select();
        $this->assign("data", $data);
        $this->display($tpl);
    }

    public function getAttrfrom ($attr_id, $fields) {
        if (isset($fields)) {
            $data = M("SystemAttrFrom")->where(["attr_id" => $attr_id])->getField($fields);
        } else {
            $data = M("SystemAttrFrom")->where(["attr_id" => $attr_id])->find();
        }
        return $data;
    }
}