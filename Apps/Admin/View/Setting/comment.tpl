<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置-评论设置</title>
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
            <div class="panel-heading"><h3>评论设置</h3></div>
            <div class="panel-body">
                <form action="{:U('Admin/Setting/save')}" mini-form="commit" class="form-horizontal form-border" role="form" method="post">
                    <input type="hidden" name="K" value="comment" />
                    <div class="form-group">
                        <label for="config[article_type]" class="col-sm-2 control-label">文章模块：</label>
                        <div class="col-sm-4">
                            <select class="form-control input-sm" name="config[article_type]">
                                <option value="closed" selected>关闭评论</option>
                                <option value="comment">站内评论</option>
                                <option value="sns">社会化评论框</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[photo_type]" class="col-sm-2 control-label">美图模块：</label>
                        <div class="col-sm-4">
                            <select class="form-control input-sm" name="config[photo_type]">
                                <option value="closed" selected>关闭评论</option>
                                <option value="comment">站内评论</option>
                                <option value="sns">社会化评论框</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[snscomment]" class="col-sm-2 control-label">社会化评论框：</label>
                        <div class="col-sm-4">
                            <textarea name="config[snscomment]" class="form-control"></textarea>
                        </div>
                        <div class="col-sm-3">影响有：文章评论、美图评论、淘宝客日记</div>
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