<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置-3G版设置</title>
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
            <div class="panel-heading"><h3>3G版设置</h3></div>
            <div class="panel-body">
                <div class="alert alert-danger alert-dismissable">
                    说明：全局中开启了3G站功能设置才有效
                </div>
                <form action="{:U('Admin/Setting/save')}" mini-form="commit" class="form-horizontal form-border" role="form" method="post">
                    <input type="hidden" name="K" value="mobile" />
                    <div class="form-group">
                        <label for="config[title]" class="col-sm-2 control-label">3G版名称：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[title]" class="form-control">
                        </div>
                        <div class="col-sm-3">如：U嫁城 手机版</div>
                    </div>
                    <div class="form-group">
                        <label for="config[url]" class="col-sm-2 control-label">3G版域名：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[url]" class="form-control">
                        </div>
                        <div class="col-sm-3">3G版的域名，以http://开头, 如  http://u.ujiacity.cc</div>
                    </div>
                    <div class="form-group">
                        <label for="config[forward]" class="col-sm-2 control-label">自动跳转：</label>
                        <div class="col-sm-4">
                            <label for="config[forward]" class="radio-inline">
                                <input type="radio" class="icheck" checked="" name="config[forward]" value="1"> 是
                            </label>
                            <label for="config[forward]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[forward]" value="0"> 否
                            </label>
                        </div>
                        <div class="col-sm-3">开启后用户使用手机浏览器访问网站首页时自动跳转到手机站点首页进行访问</div>
                    </div>
                    <div class="form-group">
                        <label for="config[down_android]" class="col-sm-2 control-label">安卓下载地址：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[down_android]" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[down_iphone]" class="col-sm-2 control-label">苹果下载地址：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[down_iphone]" class="form-control">
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