<extend name="Public:layout"/>
<block name="seo">
    <title>商城管理系统</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
</block>
<block name="css"></block>
<block name="content">
    <div class="row">
        <div class="col-md-3 col-sm-6">
            <div class="dashboard-tile detail tile-red">
                <div class="content">
                    <h1 class="text-left timer" data-from="0" data-to="{$newUser}" data-speed="2500"></h1>
                    <p>新用户</p>
                </div>
                <div class="icon"><i class="fa fa-users"></i></div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="dashboard-tile detail tile-turquoise">
                <div class="content">
                    <h1 class="text-left timer" data-from="0" data-to="{$newComment}" data-speed="2500"></h1>
                    <p>新评论</p>
                </div>
                <div class="icon"><i class="fa fa-comments"></i></div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="dashboard-tile detail tile-blue">
                <div class="content">
                    <h1 class="text-left timer" data-from="0" data-to="32" data-speed="2500"></h1>
                    <p>新信息</p>
                </div>
                <div class="icon"><i class="fa fa fa-envelope"></i></div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="dashboard-tile detail tile-purple">
                <div class="content">
                    <h1 class="text-left timer" data-from="0" data-to="{$newPost}" data-speed="2500"></h1>
                    <p>新文章</p>
                </div>
                <div class="icon"><i class="fa fa-bar-chart-o"></i></div>
            </div>
        </div>
    </div>
</block>
<block name="js">
    <script src="__PUBLIC__/plugins/countTo/jquery.countTo.js"></script>
    <script>
        $(document).ready(function() {
            app.timer();
        });
    </script>
</block>