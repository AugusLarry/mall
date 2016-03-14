<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置-全站SEO设置</title>
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
            <div class="panel-heading"><h3>全站SEO设置<a href="{:U('Admin/Setting/seotmplCreate')}" mini-load="添加模板" class="btn btn-primary btn-sm pull-right">添加模板</a></h3></div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>标题</th>
                                <th>KEY</th>
                                <th>创建时间</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>网站首页</td>
                                <td>seo_index</td>
                                <td>2014-02-20 15:07:52</td>
                                <td>
                                    <div class="btn-group dropup">
                                        <a type="button" class="btn btn-info btn-sm" href="{:U('Admin/Setting/seotmplConfig')}" mini-load="配置">配置</a>
                                        <button type="button" class="btn btn-info btn-sm dropdown-toggle" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">切换下拉</span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">修改模板</a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
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