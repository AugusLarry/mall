<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置-访问设置</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
</block>
<block name="css">
    <link rel="stylesheet" href="__PUBLIC__/plugins/icheck/css/_all.css">
</block>
<block name="content">
    <include file="Setting/secondnav"/>
    <!-- 工作区开始 -->
    <div id="rightside-content">
        <div class="panel panel-default">
            <div class="panel-heading"><h3>访问设置</h3></div>
            <div class="panel-body">
                <form action="{:U('Admin/Setting/save')}" mini-form="commit" class="form-horizontal form-border" role="form" method="post">
                    <input type="hidden" name="K" value="access" />
                    <input type="hidden" name="title" value="访问设置" />
                    <div class="form-group">
                        <label for="config[signup_type]" class="col-sm-2 control-label">可注册类型：</label>
                        <div class="col-sm-4">
                            <input type="checkbox" name="config[signup_type][member]" value="1" <php>if ($data['signup_type']['member'] == "1"){echo "checked='checked'";}</php>> 普通会员
                            <input type="checkbox" name="config[signup_type][hotel]" value="1" <php>if ($data['signup_type']['hotel'] == "1"){echo "checked='checked'";}</php>> 酒店商家
                            <input type="checkbox" name="config[signup_type][shop]" value="1" <php>if ($data['signup_type']['shop'] == "1"){echo "checked='checked'";}</php>> 婚庆商家
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[signup_count]" class="col-sm-2 control-label">注册限制：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[signup_count]" class="form-control" value="{$data.signup_count}">
                        </div>
                        <div class="col-sm-3">同一IP24小时可以注册的帐户数, 0:不限制</div>
                    </div>
                    <div class="form-group">
                        <label for="config[signup_time]" class="col-sm-2 control-label">注册间隔：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[signup_time]" class="form-control" value="{$data.signup_time}">
                        </div>
                        <div class="col-sm-3">同一IP注册帐户的时间隔(秒), 0:不限制</div>
                    </div>
                    <div class="form-group">
                        <label for="config[retain_uname]" class="col-sm-2 control-label">保留用户名：</label>
                        <div class="col-sm-4">
                            <textarea name="config[retain_uname]" class="form-control">{$data.retain_uname}</textarea>
                        </div>
                        <div class="col-sm-3">保留的用户名，一行一个，支持通配符(*)</div>
                    </div>
                    <div class="form-group">
                        <label for="config[denyip]" class="col-sm-2 control-label">限制访问IP：</label>
                        <div class="col-sm-4">
                            <textarea name="config[denyip]" class="form-control">{$data.denyip}</textarea>
                        </div>
                        <div class="col-sm-3">限制访问IP，一行一个，支持通配符(*)</div>
                    </div>
                    <div class="form-group">
                        <label for="config[mobile_count]" class="col-sm-2 control-label">短信限制：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[mobile_count]" class="form-control" value="{$data.mobile_count}">
                        </div>
                        <div class="col-sm-3">同一IP24小时可以接收短信数，0:不限制</div>
                    </div>
                    <div class="form-group">
                        <label for="config[mobile_time]" class="col-sm-2 control-label">短信间隔：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[mobile_time]" class="form-control" value="{$data.mobile_time}">
                        </div>
                        <div class="col-sm-3">同一IP接收短信的时间隔(秒), 0:不限制</div>
                    </div>
                    <div class="form-group">
                        <label for="config[book_count]" class="col-sm-2 control-label">招标限制：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[book_count]" class="form-control" value="{$data.book_count}">
                        </div>
                        <div class="col-sm-3">同一IP24小时可以可以发布招标数, 0:不限制</div>
                    </div>
                    <div class="form-group">
                        <label for="config[book_time]" class="col-sm-2 control-label">招标间隔：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[book_time]" class="form-control" value="{$data.book_time}">
                        </div>
                        <div class="col-sm-3">同一IP发布招标的时间隔(秒), 0:不限制</div>
                    </div>
                    <div class="form-group">
                        <label for="config[verifycode]" class="col-sm-2 control-label">开启验证码：</label>
                        <div class="col-sm-4">
                            <input type="checkbox" name="config[verifycode][signup]" value="1" <php>if($data['verifycode']['signup'] == "1"){echo "checked='checked'";}</php>> 注册帐号
                            <input type="checkbox" name="config[verifycode][login]" value="1" <php>if($data['verifycode']['login'] == "1"){echo "checked='checked'";}</php>> 登录帐号
                            <input type="checkbox" name="config[verifycode][admin]" value="1" <php>if($data['verifycode']['admin'] == "1"){echo "checked='checked'";}</php>> 后台登录
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[closed]" class="col-sm-2 control-label">关闭站点：</label>
                        <div class="col-sm-4">
                            <label for="config[closed]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[closed]" value="1" <if condition="$data.closed eq 1">checked="checked"</if>> 是
                            </label>
                            <label for="config[closed]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[closed]" value="0" <if condition="$data.closed eq 0">checked="checked"</if>> 否
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[closed_reason]" class="col-sm-2 control-label">关闭原因：</label>
                        <div class="col-sm-4">
                            <textarea name="config[closed_reason]" class="form-control">{$data.closed_reason}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-4">
                            <button class="btn btn-primary formSubmit">提交数据</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- 工作区结束 -->
</block>
<block name="js">
    <script src="__PUBLIC__/plugins/countTo/jquery.countTo.js"></script>
    <script src="__PUBLIC__/plugins/icheck/js/icheck.min.js"></script>
    <script src="__PUBLIC__/plugins/ajaxForm/ajax.js"></script>
    <script>
        $(document).ready(function() {
            app.timer();
            $('input').iCheck({
                checkboxClass: 'icheckbox_flat-grey',
                radioClass: 'iradio_flat-grey'
            });
        });
    </script>
</block>