/**
 * Created by Administrator on 2016/3/12.
 */
$(function () {
	//ajax提交后显示的box对象
	var MsgBox = window.MsgBox = window.MsgBox || {};
	//提示信息
	MsgBox.msg = {
		load    : "数据努力加载中...",
		commit  : "数据处理中...",
		success : "提交成功!",
		error   : "处理失败!"
	};
	//提示框
	MsgBox.box = function(msg) {
		return "<div class='modal fade' id='ajaxModal' tabindex='-1' role='dialog' aria-labelledby='ajaxForm' aria-hidden='true'>\
					<div class='modal-dialog modal-sm'>\
						<div class='modal-content'>\
							<div class='modal-body'>\
								<p>"+msg+"</p>\
							</div>\
						</div>\
					</div>\
				</div>";
	};
	//页面弹出窗
	MsgBox.pagebox = function(head,body) {
		return "<div class='modal fade' id='ajaxModal' tabindex='-1' role='dialog' aria-labelledby='ajaxForm' aria-hidden='true'>\
					<div class='modal-dialog modal-sm'>\
						<div class='modal-content'>\
							<div class='modal-header'>\
								<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>x</button>\
								<h4 class='modal-title'>"+head+"</h4>\
							</div>\
							<div class='modal-body'>\
								"+body+"\
							</div>\
						</div>\
					</div>\
				</div>";
	}
	//加载提示
	MsgBox.load = function(msg) {
		$("body").append(msg || MsgBox.box(MsgBox.msg.load));
		$("#ajaxModal").modal("show");
		setTimeout(function(){
			$("#ajaxModal").modal("hide");
		}, 1200);
	};
	//提交提示
	MsgBox.commit = function(msg) {
		$("body").append(msg || MsgBox.box(MsgBox.msg.commit));
		$("#ajaxModal").modal("show");
		setTimeout(function(){
			$("#ajaxModal").modal("hide");
		}, 1200);
	};
	//成功提示
	MsgBox.success = function(msg) {
		$("#ajaxModal p").html(msg || MsgBox.msg.success);
		$("#ajaxModal").modal("show");
		setTimeout(function(){
			$("#ajaxModal").modal("hide");
		}, 1200);
	};
	//错误提示
	MsgBox.error = function(msg) {
		$("#ajaxModal p").html(msg || MsgBox.msg.error);
		$("#ajaxModal").modal("show");
		setTimeout(function(){
			$("#ajaxModal").modal("hide");
		}, 1200);
	};
	//表单ajax提交
	$("form[mini-form]").off("submit").on("submit",function(){
		var options = {};
		if ($(this).attr("mini-form") == "commit") {
			MsgBox.commit();
		}
		var backUrl = window.location.href;
		options.url = $(this).attr("action");
		options.type = "POST";
		options.cache = false;
		options.data = $(this).serialize();
		options.dataType = "json";
		options.error = function (XMLHttpRequest, textStatus, errorThrown) {
			MsgBox.error(textStatus);
			setTimeout(function(){
				window.location.reload();
			},1200)
		}
		options.success = function (data, textStatus) {
			if (data.status == 1) {
				MsgBox.success(data.info);
				setTimeout(function(){
					window.location.reload();
				},1200)

			} else {
				MsgBox.error(data.info);
				setTimeout(function(){
					window.location.reload();
				},1200)
			}
		}
		setTimeout(function(){
			$.ajax(options);
		}, 1200);
		return false;
	})
	//链接加载弹出窗
	$("[mini-load]").off("click").on("click", function(){
		var url = $(this).attr("href") || $(this).attr("action");
		console.log(url);
		return false;
	})
})