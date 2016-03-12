<?php
    /**
     * User: Larry<resinchem@qq.com>
     * Date: 2016/3/12
     * Time: 10:40
     */
namespace Admin\Controller;
use Think;
use Think\Controller;

/**
 * Class 后台前置控制器
 * @package Admin\Controller
 */
class CommonController extends Controller {
    public function _initialize () {
        if (!isset($_SESSION['aid'])) {
            $this->redirect("Login/index");
            return false;
        }
    }
}