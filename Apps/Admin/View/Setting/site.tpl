<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置-基本设置</title>
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
            <div class="panel-heading"><h3>基本设置</h3></div>
            <div class="panel-body">
                <form action="{:U('Admin/Setting/save')}" mini-form="commit" class="form-horizontal form-border" role="form" method="post">
                    <input type="hidden" name="K" value="site" />
                    <input type="hidden" name="title" value="基本设置" />
                    <div class="form-group">
                        <label for="config[title]" class="col-sm-2 control-label">网站名称：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[title]" class="form-control" value="{$data.title}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[siteurl]" class="col-sm-2 control-label">网站网址：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[siteurl]" class="form-control" value="{$data.siteurl}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[mail]" class="col-sm-2 control-label">联系邮箱：</label>
                        <div class="col-sm-4">
                            <input type="email" name="config[mail]" class="form-control" value="{$data.mail}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[kfqq]" class="col-sm-2 control-label">客服QQ：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[kfqq]" class="form-control" value="{$data.kfqq}">
                        </div>
                        <div class="col-sm-3">多个QQ用","分隔</div>
                    </div>
                    <div class="form-group">
                        <label for="config[phone]" class="col-sm-2 control-label">联系电话：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[phone]" class="form-control" value="{$data.phone}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[logo]" class="col-sm-2 control-label">网站LOGO：</label>
                        <div class="col-sm-4">
                            <input type="file" name="config[logo]" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[weixinqr]" class="col-sm-2 control-label">微信二维码：</label>
                        <div class="col-sm-4">
                            <input type="file" name="config[weixinqr]" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[mobile]" class="col-sm-2 control-label">开户3G版：</label>
                        <div class="col-sm-4">
                            <label for="config[mobile]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[mobile]" value="1" <if condition="$data.mobile eq 1">checked="checked"</if>> 开启
                            </label>
                            <label for="config[mobile]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[mobile]" value="0" <if condition="$data.mobile eq 0">checked="checked"</if>> 关闭
                            </label>
                        </div>
                        <div class="col-sm-3">请务必在 网站设置->3G版设置中配置正确，否刚网站可能无法运行</div>
                    </div>
                    <div class="form-group">
                        <label for="config[ucenter]" class="col-sm-2 control-label">UCenter：</label>
                        <div class="col-sm-4">
                            <label for="config[ucenter]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[ucenter]" value="1" <if condition="$data.ucenter eq 1">checked="checked"</if>> 开启
                            </label>
                            <label for="config[ucenter]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[ucenter]" value="0" <if condition="$data.ucenter eq 0">checked="checked"</if>> 关闭
                            </label>
                        </div>
                        <div class="col-sm-3">请务必在 会员->登录接口->UCenter设置中配置正确，否则网站可能无法运行</div>
                    </div>
                    <div class="form-group">
                        <label for="config[city_id]" class="col-sm-2 control-label">默认城市：</label>
                        <div class="col-sm-4">
                            <select name="config[city_id]" class="form-control">
                                <option value="">温州</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[multi_city]" class="col-sm-2 control-label">开启多城市：</label>
                        <div class="col-sm-4">
                            <label for="config[multi_city]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[multi_city]" value="1" <if condition="$data.multi_city eq 1">checked="checked"</if>> 开启
                            </label>
                            <label for="config[multi_city]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[multi_city]" value="0" <if condition="$data.multi_city eq 0">checked="checked"</if>> 关闭
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[domain]" class="col-sm-2 control-label">根域名：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[domain]" class="form-control" value="{$data.domain}">
                        </div>
                        <div class="col-sm-3">开启多城市或设置频道域名，必须设置此项否则网站无法打开</div>
                    </div>
                    <div class="form-group">
                        <label for="config[rewrite]" class="col-sm-2 control-label">开启伪静态：</label>
                        <div class="col-sm-4">
                            <label for="config[rewrite]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[rewrite]" value="1" <if condition="$data.rewrite eq 1">checked="checked"</if>> 开启
                            </label>
                            <label for="config[rewrite]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[rewrite]" value="0" <if condition="$data.rewrite eq 0">checked="checked"</if>> 关闭
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[intro]" class="col-sm-2 control-label">网站简介：</label>
                        <div class="col-sm-4">
                            <textarea name="config[intro]" class="form-control">{$data.intro}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[tongji]" class="col-sm-2 control-label">统计代码：</label>
                        <div class="col-sm-4">
                            <textarea name="config[tongji]" class="form-control">{$data.tongji}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[icp]" class="col-sm-2 control-label">备案信息：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[icp]" class="form-control" value="{$data.icp}">
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