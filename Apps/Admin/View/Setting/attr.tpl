<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置-属性列表</title>
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
            <div class="panel-heading"><h3>属性列表<a href="{:U('Admin/Setting/attrCreate')}" mini-load="添加属性" class="btn btn-primary btn-sm pull-right">添加属性</a><a href="{:U('Admin/Setting/provinceCreate')}" mini-load="搜索" class="btn btn-primary btn-sm pull-right">搜索</a></h3></div>
            <div class="panel-body">
                <form class="form-horizontal" id="lists-form">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th width="70">ID</th>
                                    <th width="15%">关联模块</th>
                                    <th width="35%">属性名称</th>
                                    <th width="10%">多选</th>
                                    <th width="10%">搜索</th>
                                    <th width="10%">排序</th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                <volist name="data" id="v">
                                    <tr>
                                        <td><input class="icheck" type="checkbox" name="attr_id[]" value="{$v.attr_id}" checkone="PRI">&nbsp;&nbsp;{$v.attr_id}</td>
                                        <td>{:W('Data/getAttrfrom', [$v['attr_id'], 'title'])}</td>
                                        <td><input type="text" class="form-control" name="data[{$v.attr_id}][title]" value="{$v.title}"></td>
                                        <td><label class="checkbox-inline"><input class="icheck" type="checkbox" name="data[{$v.attr_id}][multi]" value="Y" <php>if ($v['multi'] == "Y"){echo "checked='checked'";}</php>> 多选</label></td>
                                        <td><label class="checkbox-inline"><input class="icheck" type="checkbox" name="data[{$v.attr_id}][filter]" value="Y" <php>if ($v['filter'] == "Y"){echo "checked='checked'";}</php>> 搜索</label></td>
                                        <td><input type="text" class="form-control" name="data[{$v.attr_id}][orderby]" value="{$v.orderby}"></td>
                                        <td>
                                            <div class="btn-group dropup">
                                                <a type="button" class="btn btn-info btn-sm" href="{:U('Admin/Setting/attrEdit', ['attr_id' => $v['attr_id']])}" mini-load="选项">选项</a>
                                                <button type="button" class="btn btn-info btn-sm dropdown-toggle" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                    <span class="sr-only">切换下拉</span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="{:U('Admin/Setting/attrDelete', ['attr_id' => $v['attr_id']])}">删除</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                </volist>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
        </div>
        <div class="panel panel-info panel-fix-bottom">
            <div class="panel-heading">
                <label class="checked-inline"><input class="icheck" type="checkbox" checkall="PRI"> 全选</label>
                <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-times-circle"></i> 删除所有</button>
                <button type="button" class="btn btn-info btn-sm" mini-submit="#lists-form" data-action="{:U('Admin/Setting/attrEdithandle')}"><i class="fa fa-info-circle"></i> 更新内容</button>
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
            $(":checkbox[checkall]").siblings("ins").on("click", function () {
                var cks = $(":checkbox[checkone='"+$(":checkbox[checkall]").attr("checkall")+"']");
                if ($(this).parent().hasClass("checked")) {
                    cks.each(function(){
                        $(this).attr("checked",true).parent().addClass('checked');
                    })
                } else {
                    cks.each(function(){
                        $(this).attr("checked",false).parent().removeClass('checked');
                    })
                }
            })
        });
    </script>
</block>