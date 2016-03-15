<?php
    /**
     * User: Larry<resinchem@qq.com>
     * Date: 2016/3/12
     * Time: 13:40
     */
namespace Admin\Controller;
class SettingController extends CommonController {
	//定义空方法，将所有的网站设置访问解析到index方法
	public function _empty($config) {
		$this->index($config);
	}

	//接收网站设置操作方法，并显示对应的模板
	protected function index ($config) {
        $data = D("SystemConfig")->find($config);
        $this->assign("data", unserialize($data['v']));
		$this->display($config);
	}

    //保存设置
    public function save () {
    	//p(I("post."));die;
        if (!IS_AJAX || I("post.K") == "") $this->error("非法访问");
        $model = D("SystemConfig");
        if (!$model->checkPost(I("post.")))
            $this->ajaxReturn(["info" => "保存失败!", "status" => "0"], "json");
        else
            $this->ajaxReturn(["info" => "保存成功!", "status" => "1"], "json");
    }

    //seo模板页面
    public function seotmpl () {
        $this->display();
    }

    //保存seo模板
    public function seotmplSave () {
        p(I("post."));die;
    }

    //省份列表
    public function province () {
        $data = M("SystemProvince")->order('orderby')->select();
        $this->assign("data", $data);
        $this->display();
    }

    //保存省份
    public function provinceSave () {
        if (!IS_AJAX || I("post.data") == "") $this->error("非法访问");
        $model = D("SystemProvince");
        if (!$model->provinceSave(I("post.data")))
            $this->ajaxReturn(["info" => "添加失败!", "status" => "0"], "json");
        else
            $this->ajaxReturn(["info" => "添加成功!", "status" => "1"], "json");
    }

    //修改省份视图
    public function provinceEdit () {
        $data = M("SystemProvince")->find(I("get.province_id"));
        if (!$data) {
            $this->error("请求的数据不存在");
        }
        else {
            $this->assign("data", $data);
            $this->display();
        }
    }

    //修改省份
    public function provinceEdithandle () {
        if (!IS_AJAX || I("post.data") == "") $this->error("非法访问");
        $model = D("SystemProvince");
        if (!$model->edit(I("post.data")))
            $this->ajaxReturn(["info" => "修改失败!", "status" => "0"], "json");
        else
            $this->ajaxReturn(["info" => "修改成功!", "status" => "1"], "json");
    }
}