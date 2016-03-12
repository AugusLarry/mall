<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"><![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<!--head开始-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="shortcut icon" href="/Public/img/favicon.ico" type="image/x-icon">
    
    <title>商城管理系统</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="/Public/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Fonts from Font Awsome -->
    <link rel="stylesheet" href="/Apps/Admin/View/static/css/font-awesome.min.css">
    <!-- CSS Animate -->
    <link rel="stylesheet" href="/Apps/Admin/View/static/css/animate.css">
    <!-- Custom styles for this theme -->
    <link rel="stylesheet" href="/Apps/Admin/View/static/css/main.css">
    <script src="/Apps/Admin/View/static/js/modernizr-2.6.2.min.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="/Apps/Admin/View/static/js/html5shiv.js"></script>
    <script src="/Apps/Admin/View/static/js/respond.min.js"></script>
    <![endif]-->
    
</head>
<!--head结束-->
<body>
<section id="container">
    <!-- 顶部开始 -->
<header id="header">
    <!--logo start-->
    <div class="brand">
        <a href="<?php echo U('Admin/Index/index');?>" class="logo">
            <span>U嫁城</span></a>
    </div>
    <!--logo end-->
    <div class="toggle-navigation toggle-left">
        <button type="button" class="btn btn-default" id="toggle-left" data-toggle="tooltip" data-placement="right" title="Toggle Navigation"><i class="fa fa-bars"></i></button>
    </div>
    <div class="user-nav">
        <ul>
            <li class="dropdown messages">
               <span class="badge badge-danager animated bounceIn" id="new-messages">5</span>
               <button type="button" class="btn btn-default dropdown-toggle options" id="toggle-mail" data-toggle="dropdown"><i class="fa fa-envelope"></i></button>
               <ul class="dropdown-menu alert animated fadeInDown">
                  <li><h1>You have<strong>5</strong>new messages</h1></li>
                  <li>
                     <a href="#">
                        <div class="profile-photo">
                           <img src="/Public/img/avatar.gif" alt="" class="img-circle">
                        </div>
                        <div class="message-info">
                           <span class="sender">James Bagian</span>
                           <span class="time">30 mins</span>
                           <div class="message-content">Lorem ipsum dolor sit amet, elit rutrum felis sed erat augue fusce...</div>
                        </div>
                     </a>
                  </li>
                  <li>
                     <a href="#">
                        <div class="profile-photo">
                           <img src="/Public/img/avatar1.gif" alt="" class="img-circle">
                        </div>
                        <div class="message-info">
                           <span class="sender">Jeffrey Ashby</span>
                           <span class="time">2 hour</span>
                           <div class="message-content">hendrerit pellentesque, iure tincidunt, faucibus vitae dolor aliquam...</div>
                        </div>
                     </a>
                  </li>
                  <li>
                     <a href="#">
                        <div class="profile-photo">
                           <img src="/Public/img/avatar2.gif" alt="" class="img-circle">
                        </div>
                        <div class="message-info">
                           <span class="sender">John Douey</span>
                           <span class="time">3 hours</span>
                           <div class="message-content">Penatibus suspendisse sit pellentesque eu accumsan condimentum nec...</div>
                        </div>
                     </a>
                  </li>
                  <li>
                     <a href="#">
                        <div class="profile-photo">
                           <img src="/Public/img/avatar3.gif" alt="" class="img-circle">
                        </div>
                        <div class="message-info">
                           <span class="sender">Ellen Baker</span>
                           <span class="time">7 hours</span>
                           <div class="message-content">Sem dapibus in, orci bibendum faucibus tellus, justo arcu...</div>
                        </div>
                     </a>
                  </li>
                  <li>
                     <a href="#">
                        <div class="profile-photo">
                           <img src="/Public/img/avatar4.gif" alt="" class="img-circle">
                        </div>
                        <div class="message-info">
                           <span class="sender">Ivan Bella</span>
                           <span class="time">6 hours</span>
                           <div class="message-content">Curabitur metus faucibus sapien elit, ante molestie sapien...</div>
                        </div>
                     </a>
                  </li>
                  <li><a href="#">Check all messages <i class="fa fa-angle-right"></i></a></li>
               </ul>
            </li>
            <li class="dropdown settings">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#"><?php echo (session('aname')); ?> <i class="fa fa-angle-down"></i></a>
                <ul class="dropdown-menu animated fadeInDown">
                    <li><a href="<?php echo U('Admin/User/details');?>/id/<?php echo (session('uid')); ?>"><i class="fa fa-user"></i> 修改密码</a></li>
                    <li><a href="<?php echo U('Admin/Articles/addArticle');?>"><i class="fa fa-edit"></i> 写文章</a></li>
                    <li><a href="#"><i class="fa fa-envelope"></i> Inbox <span class="badge badge-danager" id="user-inbox">5</span></a></li>
                    <li><a href="<?php echo U('Admin/Index/logout');?>"><i class="fa fa-power-off"></i> 退出登录</a></li>
                </ul>
            </li>
            <li>
                <a href="" target="_blank" title="前台首页"><i class="fa fa-home"></i></a>
            </li>
            <!-- <li>
               <div class="toggle-navigation toggle-right">
                  <button type="button" class="btn btn-default" id="toggle-right"><i class="fa fa-comment"></i></button>
               </div>
            </li> -->
        </ul>
    </div>
</header>
<!-- 顶部结束 -->
    <!--菜单开始-->
<aside class="sidebar">
    <div id="leftside-navigation" class="nano">
        <ul class="nano-content">
            <li><a href="<?php echo U('Admin/Index/index');?>"><i class="fa fa-dashboard"></i>首页</a></li>
            <li><a href="<?php echo U('Admin/Setting/site');?>"><i class="fa fa-gear"></i>设置</a></li>
            <li><a href="<?php echo U('Admin/Setting/index');?>"><i class="fa fa-group"></i>会员</a></li>
            <li><a href="<?php echo U('Admin/Setting/index');?>"><i class="fa fa-user"></i>商家</a></li>
            <li><a href="<?php echo U('Admin/Setting/index');?>"><i class="fa fa-puzzle-piece"></i>模块</a></li>
            <li><a href="<?php echo U('Admin/Setting/index');?>"><i class="fa fa-square"></i>应用</a></li>
            <li><a href="<?php echo U('Admin/Setting/index');?>"><i class="fa fa-book"></i>运营</a></li>
            <li><a href="<?php echo U('Admin/Setting/index');?>"><i class="fa fa-wrench"></i>工具</a></li>
            <li><a href="<?php echo U('Admin/Setting/index');?>"><i class="fa fa-cogs"></i>系统</a></li>
        </ul>
        <!--ul class="nano-content" id="home_nav">
            <li><a href="<?php echo U('Admin/Index/index');?>"><i class="fa fa-dashboard"></i><span>首页</span></a></li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-gear"></i><span>设置</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                <ul>
                    <li><a href="javascript:void(0);">网站设置</a></li>
                    <li><a href="">城市管理</a></li>
                    <li><a href="">属性设置</a></li>
                    <li><a href="">基础数据</a></li>
                    <li><a href="">支付配置</a></li>
                    <li><a href="">界面设置</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-group"></i><span>会员</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                <ul>
                    <li><a href="">会员管理</a></li>
                    <li><a href="">通知设置</a></li>
                    <li><a href="">登录接口</a></li>
                    <li><a href="">认证管理</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-user"></i><span>商家</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                <ul>
                    <li><a href="">酒店管理</a></li>
                    <li><a href="">商家管理</a></li>
                    <li><a href="">商品管理</a></li>
                    <li><a href="">订单管理</a></li>
                    <li><a href="">评价管理</a></li>
                    <li><a href="">优惠活动</a></li>
                    <li><a href="">优惠券管理</a></li>
                    <li><a href="">商家结算</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-puzzle-piece"></i><span>模块</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                <ul>
                    <li><a href="">淘客管理</a></li>
                    <li><a href="">相册管理</a></li>
                    <li><a href="">团购管理</a></li>
                    <li><a href="">活动管理</a></li>
                    <li><a href="">招标管理</a></li>
                    <li><a href="">新人主页</a></li>
                    <li><a href="">结婚保障</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-square"></i><span>应用</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                <ul>
                    <li><a href="">微信应用</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-book"></i><span>运营</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                <ul>
                    <li><a href="">内容推荐</a></li>
                    <li><a href="">广告管理</a></li>
                    <li><a href="">文章管理</a></li>
                    <li><a href="">页面管理</a></li>
                    <li><a href="">友情链接</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-wrench"></i><span>工具</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                <ul>
                    <li><a href="">数据库管理</a></li>
                    <li><a href="">站长工具</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-cogs"></i><span>系统</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                <ul>
                    <li><a href="">权限管理</a></li>
                    <li><a href="">模块管理</a></li>
                </ul>
            </li>
        </ul-->
    </div>
</aside>
<!--菜单结束-->
    <section class="main-content-wrapper">
        <section id="main-content">
            <!--内容区开始-->
            
    <div class="row">
        <div class="col-md-3 col-sm-6">
            <div class="dashboard-tile detail tile-red">
                <div class="content">
                    <h1 class="text-left timer" data-from="0" data-to="<?php echo ($newUser); ?>" data-speed="2500"></h1>
                    <p>新用户</p>
                </div>
                <div class="icon"><i class="fa fa-users"></i></div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="dashboard-tile detail tile-turquoise">
                <div class="content">
                    <h1 class="text-left timer" data-from="0" data-to="<?php echo ($newComment); ?>" data-speed="2500"></h1>
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
                    <h1 class="text-left timer" data-from="0" data-to="<?php echo ($newPost); ?>" data-speed="2500"></h1>
                    <p>新文章</p>
                </div>
                <div class="icon"><i class="fa fa-bar-chart-o"></i></div>
            </div>
        </div>
    </div>

            <!--内容区结束-->
        </section>
    </section>
</section>
<!--Global JS-->
<!-- <script src="/Public/js/jquery-1.10.2.min.js"></script> -->
<script src="/Apps/Admin/View/static/js/jquery-1.10.2.min.js"></script>
<script src="/Public/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="/Public/plugins/waypoints/waypoints.min.js"></script>
<script src="/Apps/Admin/View/static/js/application.js"></script>
<script type="text/javascript">
    function setHover()
    {
        var url = document.URL;
        var href = "";
        $("#home_nav li").each(function(){
            href = $(this).find("a").attr("href");
            if (url.search(href) != -1) {
                $(this).addClass("active");
                $(this).parents("li").addClass("active");
                return false;
            }
        });
    }
    $(function(){
        setHover();
    })
    $(document).ready(function() {
        $('#tooltip-left,#tooltip-top,#tooltip-bottom,#tooltip-right').tooltip()
    });
</script>

    <script src="/Public/plugins/countTo/jquery.countTo.js"></script>
    <script>
        $(document).ready(function() {
            app.timer();
        });
    </script>

</body>
</html>