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
    
    <title>网站设置</title>
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
    
    <link rel="stylesheet" href="/Public/plugins/icheck/css/_all.css">

</head>
<!--head结束-->
<body>
<section id="container">
    <!-- 顶部开始 -->
<header id="header">
    <!--logo start-->
    <div class="brand">
        <a href="<?php echo U('Admin/Index/index');?>" class="logo"></a>
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
    </div>
</aside>
<!--菜单结束-->
    <section class="main-content-wrapper">
        <section id="main-content">
            <!--内容区开始-->
            
    <!-- 左侧导航开始 -->
    <div id="leftside-navigation" class="nano secondnav">
        <p style="padding:15px 20px;font-size:24px;font-weight:bold;margin-bottom:0px;">设置</p>
        <ul class="nano-content" id="home_nav">
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-caret-right"></i><span>网站设置</span></a>
                <ul>
                    <li><a href="">基本设置</a></li>
                    <li><a href="">附件设置</a></li>
                    <li><a href="">3G版设置</a></li>
                    <li><a href="">网站公告</a></li>
                    <li><a href="">访问设置</a></li>
                    <li><a href="">积分设置</a></li>
                    <li><a href="">评论设置</a></li>
                    <li><a href="">URL设置</a></li>
                    <li><a href="">域名设置</a></li>
                    <li><a href="">全站SEO</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-caret-right"></i><span>城市设置</span></a>
                <ul>
                    <li><a href="">省份管理</a></li>
                    <li><a href="">城市管理</a></li>
                    <li><a href="">地区管理</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-caret-right"></i><span>属性设置</span></a>
                <ul>
                    <li><a href="">属性分类</a></li>
                    <li><a href="">属性列表</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-caret-right"></i><span>基础数据</span></a>
                <ul>
                    <li><a href="">过滤词列表</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-caret-right"></i><span>支付配置</span></a>
                <ul>
                    <li><a href="">支付接口</a></li>
                    <li><a href="">支付流水</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-caret-right"></i><span>界面设置</span></a>
                <ul>
                    <li><a href="">导航设置</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- 左侧导航结束 -->
    <!-- 工作区开始 -->
    <div id="rightside-content">
        <div class="panel panel-default">
            <div class="panel-heading"><h3>基本设置</h3></div>
            <div class="panel-body">
                <form action="<?php echo U('Admin/Setting/save');?>" id="my_form" class="form-horizontal" role="form" method="post">
                    <div class="form-group">
                        <label for="title" class="col-sm-1 control-label">网站名称：</label>
                        <div class="col-sm-4">
                            <input type="text" name="title" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="siteurl" class="col-sm-1 control-label">网站网址：</label>
                        <div class="col-sm-4">
                            <input type="text" name="siteurl" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-1 control-label">联系邮箱：</label>
                        <div class="col-sm-4">
                            <input type="email" name="email" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="kfqq" class="col-sm-1 control-label">客服QQ：</label>
                        <div class="col-sm-4">
                            <input type="text" name="kfqq" class="form-control">
                        </div>
                        <div class="col-sm-2">多个QQ用","分隔</div>
                    </div>
                    <div class="form-group">
                        <label for="phone" class="col-sm-1 control-label">联系电话：</label>
                        <div class="col-sm-4">
                            <input type="text" name="phone" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="logo" class="col-sm-1 control-label">网站LOGO：</label>
                        <div class="col-sm-4">
                            <input type="file" name="logo" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="weixinqr" class="col-sm-1 control-label">微信二维码：</label>
                        <div class="col-sm-4">
                            <input type="file" name="weixinqr" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-1 control-label">开户3G版：</label>
                        <div class="col-sm-4">
                            <label for="mobile" class="radio-inline">
                                <input type="radio" class="icheck" name="mobile"> 开启
                            </label>
                            <label for="mobile" class="radio-inline">
                                <input type="radio" class="icheck" checked="" name="mobile"> 关闭
                            </label>
                        </div>
                        <div class="col-sm-2">请务必在 网站设置->3G版设置中配置正确，否刚网站可能无法运行</div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-1 control-label">UCenter：</label>
                        <div class="col-sm-4">
                            <label for="ucenter" class="radio-inline">
                                <input type="radio" class="icheck" name="ucenter"> 开启
                            </label>
                            <label for="ucenter" class="radio-inline">
                                <input type="radio" class="icheck" checked="" name="ucenter"> 关闭
                            </label>
                        </div>
                        <div class="col-sm-2">请务必在 会员->登录接口->UCenter设置中配置正确，否则网站可能无法运行</div>
                    </div>
                    <div class="form-group">
                        <label for="city_id" class="col-sm-1 control-label">默认城市：</label>
                        <div class="col-sm-4">
                            <select name="city_id" class="form-control">
                                <option value="">温州</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="multi_city" class="col-sm-1 control-label">开启多城市：</label>
                        <div class="col-sm-4">
                            <label for="ucenter" class="radio-inline">
                                <input type="radio" class="icheck" name="multi_city"> 开启
                            </label>
                            <label for="ucenter" class="radio-inline">
                                <input type="radio" class="icheck" checked="" name="multi_city"> 关闭
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="domain" class="col-sm-1 control-label">根域名：</label>
                        <div class="col-sm-4">
                            <input type="text" name="domain" class="form-control">
                        </div>
                        <div class="col-sm-2">开启多城市或设置频道域名，必须设置此项否则网站无法打开</div>
                    </div>
                    <div class="form-group">
                        <label for="rewrite" class="col-sm-1 control-label">开启伪静态：</label>
                        <div class="col-sm-4">
                            <label for="ucenter" class="radio-inline">
                                <input type="radio" class="icheck" name="rewrite"> 开启
                            </label>
                            <label for="ucenter" class="radio-inline">
                                <input type="radio" class="icheck" checked="" name="rewrite"> 关闭
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-1 control-label">网站简介：</label>
                        <div class="col-sm-4">
                            <textarea name="description" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="census" class="col-sm-1 control-label">统计代码：</label>
                        <div class="col-sm-4">
                            <textarea name="census" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="icp" class="col-sm-1 control-label">备案信息：</label>
                        <div class="col-sm-4">
                            <input type="text" name="icp" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-1 col-sm-4">
                            <input type="submit" class="btn btn-primary" value="提交数据">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- 工作区结束 -->

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
    <script src="/Public/plugins/icheck/js/icheck.min.js"></script>
    <script src="/Public/plugins/ajaxForm/jquery.ajaxForm.js"></script>
    <script src="/Public/plugins/ajaxForm/ajax.js"></script>
    <script>
        $(document).ready(function() {
            app.timer();
            $('input').iCheck({
                checkboxClass: 'icheckbox_flat-grey',
                radioClass: 'iradio_flat-grey'
            });
        });
    </script>

</body>
</html>