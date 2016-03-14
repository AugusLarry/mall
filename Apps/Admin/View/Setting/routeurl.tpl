<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置-URL设置</title>
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
            <div class="panel-heading"><h3>URL设置</h3></div>
            <div class="panel-body">
                <div class="alert alert-danger alert-dismissable">
                    URL格式说明<br/>默认URL格式： /article.html, /article-items.html, /article-detail-1-1.html<br/>目录URL格式： /article/, /article/items, /article/detail-1-1.html
                </div>
                <form action="{:U('Admin/Setting/save')}" mini-form="commit" class="form-horizontal form-border" role="form" method="post">
                    <input type="hidden" name="K" value="routeurl" />
                    <input type="hidden" name="title" value="URL设置" />
                    <div class="form-group">
                        <label for="config[route_type]" class="col-sm-2 control-label">URL格式：</label>
                        <div class="col-sm-4">
                            <select class="form-control input-sm" name="config[route_type]">
                                <option value="0" <if condition="$data.route_type eq 0">selected</if>>默认URL格式</option>
                                <option value="1" <if condition="$data.route_type eq 1">selected</if>>目录URL格式</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[article]" class="col-sm-2 control-label">学堂：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[article]" class="form-control" value="{$data.article}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[photo]" class="col-sm-2 control-label">美图：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[photo]" class="form-control" value="{$data.photo}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[activity]" class="col-sm-2 control-label">活动：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[activity]" class="form-control" value="{$data.activity}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[product]" class="col-sm-2 control-label">商品：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[product]" class="form-control" value="{$data.product}">
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