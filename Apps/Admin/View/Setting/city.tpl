<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置-城市管理</title>
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
            <div class="panel-heading"><h3>城市管理<a href="{:U('Admin/Setting/cityCreate')}" mini-load="添加城市" class="btn btn-primary btn-sm pull-right">添加城市</a><a href="{:U('Admin/Setting/provinceCreate')}" mini-load="搜索" class="btn btn-primary btn-sm pull-right">搜索</a></h3></div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>省份</th>
                            <th>城市</th>
                            <th>拼音</th>
                            <th>模板</th>
                            <th>排序</th>
                            <th>添加时间</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                            <volist name="data" id="v">
                                <tr>
                                    <td>{$v.city_id}</td>
                                    <td>{:W('Data/getProvince', [$v['province_id'],'province_name'])}</td>
                                    <td>{$v.city_name}</td>
                                    <td>{$v.pinyin}</td>
                                    <td>默认模板</td>
                                    <td>{$v.orderby}</td>
                                    <td>{$v.dateline|date="Y-m-d H:i:s", ###}</td>
                                    <td><if condition="$v.audit eq 1">开启<else />关闭</if></td>
                                    <td>
                                        <div class="btn-group dropup">
                                            <a type="button" class="btn btn-info btn-sm" href="{:U('Admin/Setting/cityEdit', ['city_id' => $v['city_id']])}" mini-load="修改">修改</a>
                                            <button type="button" class="btn btn-info btn-sm dropdown-toggle" data-toggle="dropdown">
                                                <span class="caret"></span>
                                                <span class="sr-only">切换下拉</span>
                                            </button>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="{:U('Admin/Setting/cityDelete', ['city_id' => $v['city_id']])}">删除</a></li>
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