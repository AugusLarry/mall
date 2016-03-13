/**
 * Created by Administrator on 2016/3/12.
 */
$(function () {
	$("form").submit(function() {return false;});
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
							<div class='modal-body'><p>"+msg+"\
							</p></div></div></div></div>";
	};
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
	$(".formSubmit").click(function () {
		var options = {};
		var form = $(this).parents("form");
		if (form.attr("mini-form") == "commit") {
			MsgBox.commit();
		}
		var backUrl = window.location.href;
		options.url = form.attr("action");
		options.type = "POST";
		options.cache = false;
		options.data = form.serialize();
		options.dataType = "json";
		options.error = function (XMLHttpRequest, textStatus, errorThrown) {
			MsgBox.error(textStatus);
		}
		options.success = function (data, textStatus) {
			if (data.status == 1) {
				MsgBox.success(data.info);
			} else {
				MsgBox.error(data.info);
			}
		}
		setTimeout(function(){
			$.ajax(options);
		}, 1600);
	})
})