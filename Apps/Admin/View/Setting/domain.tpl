<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置-域名设置</title>
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
            <div class="panel-heading"><h3>域名设置</h3></div>
            <div class="panel-body">
                <div class="alert alert-danger alert-dismissable">
                    您的根域名是：u.com, 设置时不可与城市分站域名冲突,全部不要以"http"开头，结尾不要'/'
                </div>
                <form action="{:U('Admin/Setting/save')}" mini-form="commit" class="form-horizontal form-border" role="form" method="post">
                    <input type="hidden" name="K" value="domain" />
                    <input type="hidden" name="title" value="域名设置" />
                    <div class="form-group">
                        <label for="config[photo]" class="col-sm-2 control-label">美图：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[photo]" class="form-control" value="{$data.photo}">
                        </div>
                        <div class="col-sm-3">留空表示不启用， 填写的域名必须是网站设置的根域名的子域名</div>
                    </div>
                    <div class="form-group">
                        <label for="config[article]" class="col-sm-2 control-label">学堂：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[article]" class="form-control" value="{$data.article}">
                        </div>
                        <div class="col-sm-3">留空表示不启用， 填写的域名必须是网站设置的根域名的子域名</div>
                    </div>
                    <div class="form-group">
                        <label for="config[tuan]" class="col-sm-2 control-label">团购：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[tuan]" class="form-control" value="{$data.tuan}">
                        </div>
                        <div class="col-sm-3">留空表示不启用， 填写的域名必须是网站设置的根域名的子域名</div>
                    </div>
                    <div class="form-group">
                        <label for="config[product]" class="col-sm-2 control-label">商品：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[product]" class="form-control" value="{$data.product}">
                        </div>
                        <div class="col-sm-3">留空表示不启用， 填写的域名必须是网站设置的根域名的子域名</div>
                    </div>
                    <div class="form-group">
                        <label for="config[company]" class="col-sm-2 control-label">公司主页：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[company]" class="form-control" value="{$data.company}">
                        </div>
                        <div class="col-sm-3">留空表示不启用,如公司的个性域名是"test.ijh.cc", 则要填写"ijh.cc"，支持三域名域名</div>
                    </div>
                    <div class="form-group">
                        <label for="config[shop]" class="col-sm-2 control-label">商家主页：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[shop]" class="form-control" value="{$data.shop}">
                        </div>
                        <div class="col-sm-3">留空表示不启用,如商铺的个性域名是"test.ijh.cc", 则要填写"ijh.cc"，支持三域名域名</div>
                    </div>
                    <div class="form-group">
                        <label for="config[holddomain]" class="col-sm-2 control-label">保留域名：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[holddomain]" class="form-control" value="{$data.holddomain}">
                        </div>
                        <div class="col-sm-3">多个之间用 | 隔开，可以使用通配符*</div>
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