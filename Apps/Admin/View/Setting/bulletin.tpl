<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置-网站公告</title>
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
            <div class="panel-heading"><h3>网站公告</h3></div>
            <div class="panel-body">
                <form action="{:U('Admin/Setting/save')}" mini-form="commit" class="form-horizontal form-border" role="form" method="post">
                    <input type="hidden" name="K" value="bulletin" />
                    <input type="hidden" name="title" value="网站公告" />
                    <div class="form-group">
                        <label for="config[open_member]" class="col-sm-2 control-label">会员中心公告：</label>
                        <div class="col-sm-4">
                            <label for="config[open_member]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[open_member]" value="1" <if condition="$data.open_member eq 1">checked="checked"</if>> 开启
                            </label>
                            <label for="config[open_member]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[open_member]" value="0" <if condition="$data.open_member eq 0">checked="checked"</if>> 关闭
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[member]" class="col-sm-2 control-label">公告内容：</label>
                        <div class="col-sm-4">
                            <textarea name="config[member]" class="form-control">{$data.member}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[open_hotel]" class="col-sm-2 control-label">酒店中心公告：</label>
                        <div class="col-sm-4">
                            <label for="config[open_hotel]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[open_hotel]" value="1" <if condition="$data.open_hotel eq 1">checked="checked"</if>> 开启
                            </label>
                            <label for="config[open_hotel]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[open_hotel]" value="0" <if condition="$data.open_hotel eq 0">checked="checked"</if>> 关闭
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[hotel]" class="col-sm-2 control-label">公告内容：</label>
                        <div class="col-sm-4">
                            <textarea name="config[hotel]" class="form-control">{$data.hotel}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[open_shop]" class="col-sm-2 control-label">商铺中心公告：</label>
                        <div class="col-sm-4">
                            <label for="config[open_shop]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[open_shop]" value="1" <if condition="$data.open_shop eq 1">checked="checked"</if>> 开启
                            </label>
                            <label for="config[open_shop]" class="radio-inline">
                                <input type="radio" class="icheck" name="config[open_shop]" value="0" <if condition="$data.open_shop eq 0">checked="checked"</if>> 关闭
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[shop]" class="col-sm-2 control-label">公告内容：</label>
                        <div class="col-sm-4">
                            <textarea name="config[shop]" class="form-control">{$data.shop}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-4">
                            <button class="btn btn-primary">提交数据</button>
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