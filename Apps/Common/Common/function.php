<?php
    /**
     * User: Larry<resinchem@qq.com>
     * Date: 2016/3/11
     * Time: 18:38
     */
function p ($arr)
{
    echo '<pre>' . print_r($arr, true) . '</pre>';
}
function check_verify ($code, $id = '')
{
    $verify = new \Think\Verify();
    return $verify->check($code, $id);
}