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
								<input type="user" name="user" class="form-control" id="user" placeholder="用户名">
								<i class="fa fa-user"></i>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<input type="password" name="password" class="form-control" id="password" placeholder="密码">
								<i class="fa fa-lock"></i>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<input type="text" name="verify" class="form-control" id="verify" placeholder="验证码">
								<i class="fa fa-picture-o"></i>
								<img src="<?php echo U('verify');?>" class="verify">
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
<div class="modal fade bs-example-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
    <div class="modal-dialog modal-sm">
        <div class="modal-content"><div class="modal-header"><h4 class="modal-title">温馨提示:</h4></div><div class="modal-body"></div></div>
    </div>
</div>
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
    $(document).keydown(function (event) {
        if (event.keyCode == 13) {
            $("#login").click();
        }
    })
    $("#login").click(function()
    {
        var user = $("#user"),
            password = $("#password"),
            verify   = $("#verify"),
            _csrf    = $("input[name=_csrf]");
        if (user.val() == "")
        {
            alert("用户名不能为空!");
            user.parents("div.form-group").addClass("has-error");
            user.focus();
            return false;
        }
        if (password.val() == "")
        {
            alert("密码不能为空!");
            $(".form-horizontal").find("div.form-group").removeClass("has-error");
            password.parents("div.form-group").addClass("has-error");
            password.focus();
            return false;
        }
        if (verify.val() == "")
        {
            alert("验证码不能为空!");
            $(".form-horizontal").find("div.form-group").removeClass("has-error");
            verify.parents("div.form-group").addClass("has-error");
            verify.focus();
            return false;
        }
        var data = {
            user : user.val(),
            password : password.val(),
            verify : verify.val(),
            _csrf  : _csrf.val(),
        };
        $.ajax({
            url : "<?php echo U('login');?>",
            data    : data,
            type    : "POST",
            cache   : false,
            dataType: "json",
            success : function (data) {
                if (data.status) {
                    $(".modal-body").html("登录成功!");
                    $('#myModal').modal('show');
                    setTimeout(function(){
                        window.location.href = data.url;
                    },2000);
                } else {
                    $(".modal-body").html(data.info);
                    $('#myModal').modal('show');
                    $(".verify").click();
                    return false;
                }
            },
            error : function (XMLHttpRequest, textStatus) {
                $(".modal-body").html(textStatus);
                $('#myModal').modal('show');
                return false;
            }
        });
    })
</script>
</body>
</html>