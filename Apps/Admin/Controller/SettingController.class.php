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
    	//p(serialize(I("post.")));die;
        if (!IS_AJAX || I("post.K") == "") $this->error("非法访问");
        $model = D("SystemConfig");
        if (!$model->checkPost(I("post.")))
            $this->ajaxReturn(["info" => "保存失败!", "status" => 0], "json");
        else
            $this->ajaxReturn(["info" => "保存成功!", "status" => 1], "json");
    }

    //seo模板页面
    public function seotmpl () {
        $this->display();
    }

    //新建seo模板
    public function seotmplCreate () {
        $content = $this->fetch();
        $this->ajaxReturn(["info" => "$content", "title" => "添加SEO模板", "status" => 1], "json");
    }
}