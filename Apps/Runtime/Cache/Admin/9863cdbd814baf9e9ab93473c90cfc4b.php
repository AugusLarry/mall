<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>商城后台管理系统</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- Favicon -->
	<link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">
	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="/Public/plugins/bootstrap/css/bootstrap.min.css">
	<!-- Fonts from Font Awsome -->
	<link rel="stylesheet" href="/Apps/Admin/View/static/css/font-awesome.min.css">
	<!-- CSS Animate -->
	<link rel="stylesheet" href="/Apps/Admin/View/static/css/animate.css">
	<!-- Custom styles for this theme -->
	<link rel="stylesheet" href="/Apps/Admin/View/static/css/main.css">
	<!-- Feature detection -->
	<script src="/Apps/Admin/View/static/js/modernizr-2.6.2.min.js"></script>
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="/Apps/Admin/View/static/js/html5shiv.js"></script>
	<script src="/Apps/Admin/View/static/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
<section id="login-container">
	<div class="row">
		<div class="col-md-3" id="login-wrapper">
			<div class="panel panel-primary animated flipInY">
				<div class="panel-heading">
					<h3 class="panel-title">
						商城后台管理系统-登录
					</h3>
				</div>
				<div class="panel-body">
					<p>登录你的账户</p>
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<div class="col-md-12">
								<input type="user" class="form-control" id="user" placeholder="用户名">
								<i class="fa fa-user"></i>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<input type="password" class="form-control" id="password" placeholder="密码">
								<i class="fa fa-lock"></i>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<input type="text" class="form-control" id="verify" placeholder="验证码">
								<i class="fa fa-picture-o"></i>
								<img src="<?php echo U('verify');?>" class="verify">
								<a href="" class="help-block">忘记密码?</a>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<input type="button" class="btn btn-primary btn-block" id="login" value="登录">
								<hr />
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<!--Global JS-->
<script src="/Apps/Admin/View/static/js/jquery-1.10.2.min.js"></script>
<script src="/Public/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="/Public/plugins/waypoints/waypoints.min.js"></script>
<script src="/Public/plugins/nanoScroller/jquery.nanoscroller.min.js"></script>
<script src="/Apps/Admin/View/static/js/application.js"></script>
<script>
	$(".verify").click(function()
	{
		$(this).attr("src", "<?php echo U('verify');?>/" + Math.random());
		return false;
	})
</script>
</body>
</html>