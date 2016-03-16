<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置-属性分类</title>
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
            <div class="panel-heading"><h3>属性分类<a href="{:U('Admin/Setting/attrfromCreate')}" mini-load="添加属性分类" class="btn btn-primary btn-sm pull-right">添加属性分类</a></h3></div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>分类KEY</th>
                            <th>标题</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                            <volist name="data" id="v">
                                <tr>
                                    <td>{$v.from_id}</td>
                                    <td>{$v.from}</td>
                                    <td>{$v.title}</td>
                                    <td>
                                        <div class="btn-group dropup">
                                            <a type="button" class="btn btn-info btn-sm" href="{:U('Admin/Setting/attrfromEdit', ['from_id' => $v['from_id']])}" mini-load="修改">修改</a>
                                            <button type="button" class="btn btn-info btn-sm dropdown-toggle" data-toggle="dropdown">
                                                <span class="caret"></span>
                                                <span class="sr-only">切换下拉</span>
                                            </button>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="{:U('Admin/Setting/attrfromDelete', ['from_id' => $v['from_id']])}">删除</a></li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </volist>
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