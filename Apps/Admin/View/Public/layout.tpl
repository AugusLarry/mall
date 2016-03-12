<!DOCTYPE html>
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
    <link rel="shortcut icon" href="__PUBLIC__/img/favicon.ico" type="image/x-icon">
    <block name="seo">
        <title>商城管理系统</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
    </block>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="__PUBLIC__/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Fonts from Font Awsome -->
    <link rel="stylesheet" href="__ROOT__/Apps/Admin/View/static/css/font-awesome.min.css">
    <!-- CSS Animate -->
    <link rel="stylesheet" href="__ROOT__/Apps/Admin/View/static/css/animate.css">
    <!-- Custom styles for this theme -->
    <link rel="stylesheet" href="__ROOT__/Apps/Admin/View/static/css/main.css">
    <script src="__ROOT__/Apps/Admin/View/static/js/modernizr-2.6.2.min.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="__ROOT__/Apps/Admin/View/static/js/html5shiv.js"></script>
    <script src="__ROOT__/Apps/Admin/View/static/js/respond.min.js"></script>
    <![endif]-->
    <block name="css">css</block>
</head>
<!--head结束-->
<body>
<section id="container">
    <include file="Public/top"/>
    <include file="Public/nav"/>
    <section class="main-content-wrapper">
        <section id="main-content">
            <!--内容区开始-->
            <block name="content">content</block>
            <!--内容区结束-->
        </section>
    </section>
</section>
<!--Global JS-->
<!-- <script src="__PUBLIC__/js/jquery-1.10.2.min.js"></script> -->
<script src="__ROOT__/Apps/Admin/View/static/js/jquery-1.10.2.min.js"></script>
<script src="__PUBLIC__/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="__PUBLIC__/plugins/waypoints/waypoints.min.js"></script>
<script src="__ROOT__/Apps/Admin/View/static/js/application.js"></script>
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
<block name="js">js</block>
</body>
</html>