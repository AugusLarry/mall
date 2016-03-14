<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置-积分设置</title>
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
            <div class="panel-heading"><h3>积分设置</h3></div>
            <div class="panel-body">
                <div class="alert alert-danger alert-dismissable">
                    所有积分输入负数代表该操作需要扣除积分
                </div>
                <form action="{:U('Admin/Setting/save')}" mini-form="commit" class="form-horizontal form-border" role="form" method="post">
                    <input type="hidden" name="K" value="integral" />
                    <input type="hidden" name="title" value="积分设置" />
                    <div class="form-group">
                        <label for="config[email]" class="col-sm-2 control-label">邮件认证：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[email]" class="form-control" value="{$data.email}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[mobile]" class="col-sm-2 control-label">手机认证：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[mobile]" class="form-control" value="{$data.mobile}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[certification]" class="col-sm-2 control-label">实名认证：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[certification]" class="form-control" value="{$data.certification}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[photo]" class="col-sm-2 control-label">发布美图：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[photo]" class="form-control" value="{$data.photo}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[coupon]" class="col-sm-2 control-label">发布优惠券：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[coupon]" class="form-control" value="{$data.coupon}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[product]" class="col-sm-2 control-label">发布产品：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[product]" class="form-control" value="{$data.product}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[gold]" class="col-sm-2 control-label">刷新金币：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[gold]" class="form-control" value="{$data.gold}">
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