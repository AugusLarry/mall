<?php
    /**
     * User: Larry<resinchem@qq.com>
     * Date: 2016/3/11
     * Time: 17:57
     */
namespace Admin\Model;
use Think\Model;

/**
 * Class 管理员模型
 * @package Admin\Model
 */
class AdminModel extends Model {
    //字段映射
    protected $_map = [
        'user' => 'admin_name',
        'password' => 'admin_passwd'
    ];

    //定义模型字段
    protected $fields = [
        'admin_id',
        'admin_name',
        'admin_passwd',
        'last_login',
        'last_ip',
        'is_closed',
        'register_time'
    ];

    //定义主键
    protected $pk = 'admin_id';

    //自动验证
    protected $_validate = [
        ['admin_name', 'require', '账号不能为空!'],
        ['admin_passwd', 'require', '密码不能为空!'],
        ['verify', 'require', '验证码不能为空!'],
        ['verify', 'check_verify', '验证码错误', 2, 'function'],
        ['admin_passwd', 'checkPwd', '账号或密码错误', 1, 'callback', 4],//登录的时候验证
        ['is_closed', 'checkStatus', '该账号已被锁定', 1, 'callback', 4],//登录的时候验证
    ];

    //自动完成
    protected $_auto = [
        ['register_time', 'time', 1, 'function'],
        ['last_login', 'time', 1, 'function'],
        ['admin_passwd', 'md5', 3, 'function'],
        ['admin_passwd', '', 2, 'ignore']
    ];

    //验证密码
    public function checkPwd()
    {
        $pwd = $this->where(['admin_name' => I("post.user")])->field("admin_passwd")->find();
        return (!$pwd || $pwd['admin_passwd'] !== md5(I("post.password"))) ? false : true;
    }

    //验证用户状态
    public function checkStatus()
    {
        $status = $this->where(['admin_name' => I("post.user")])->field("is_closed")->find();
        return $status['is_closed'] ? false : true;
    }

    /**
     * @return 登录后处理
     */
    public function login()
    {
        $admin = $this->where(['admin_name' => I("post.user")])->find();
        if ($admin) {
            $data = [
                'admin_id' => $admin['admin_id'],
                'last_login' => NOW_TIME,
                'last_ip' => get_client_ip()
            ];
            $this->save($data);
            session("aid", $admin['admin_id']);
            session("aname", $admin['admin_name']);
            cookie("ADMIN", urlencode($admin['admin_name']),['prefix' => C("COMMENT_COOKIE_PREFIX") . "_", 'expire' => 60*60*24*365]);
            return true;
        }
        return false;
    }
}