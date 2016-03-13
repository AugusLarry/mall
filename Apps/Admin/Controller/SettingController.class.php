<?php
    /**
     * User: Larry<resinchem@qq.com>
     * Date: 2016/3/12
     * Time: 13:40
     */
namespace Admin\Controller;
class SettingController extends CommonController {
	//定义空方法，将所有的网站设置操作解析到index方法
	public function _empty($config) {
		$this->index($config);
	}

	//接收网站设置操作，并显示对应的模板
	protected function index ($config) {
		$this->display($config);
	}

    //保存设置
    public function save () {
    	p(I("post."));die;
    }
}