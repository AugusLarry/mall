<?php
    /**
     * User: Larry<resinchem@qq.com>
     * Date: 2016/3/11
     * Time: 13:59
     */
namespace Admin\Controller;
use Think;
use Think\Controller;

/**
 * Class 登录控制器
 * @package Admin\Controller
 */
class LoginController extends  Controller {
    /**
     * 登录视图
     */
    public function index () {
        $this->display();
    }

    public function verify () {
        $config = [
            'useCurve'  =>  false,
            'fontSize' => 18,
            'imageH' => 34,
            'imageW' => 140,
            'bg' => array ( 0 => '26', 1 => '188', 2 => '156'),
        ];
        $Verify = new Think\Verify($config);
        $Verify->entry();
    }

    public function login () {
        if (!IS_AJAX || empty(I("post."))) $this->error("非法访问", U('index'));
        $user = D("Admin");
        if ($user->create(I("post."), 4) && $user->login()) {
            $this->success("登录成功", U("Index/index"), true);
        } else {
            $this->error($user->getError(), U("Login/index"), true);
        }
    }
}