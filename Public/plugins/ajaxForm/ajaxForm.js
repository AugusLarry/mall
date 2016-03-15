/**
 * Created by Administrator on 2016/3/15.
 */
//ajax处理box对象
MsgBox = window.MsgBox = window.MsgBox || {};
//提示信息
MsgBox.msg = {
	load    : "数据努力加载中...",
	commit  : "数据处理中...",
	success : "提交成功!",
	error   : "处理失败!"
};
//ajax等待时间
MsgBox.waitTime = 1000;
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
	return "<div class='modal fade' id='ajaxPage' tabindex='-1' role='dialog' aria-labelledby='ajaxForm' aria-hidden='true'>\
					<div class='modal-dialog'>\
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
MsgBox.load = function(msg, title) {
	if ($("#ajaxModal").size() > 0) {
		$("#ajaxModal p").html(msg || MsgBox.msg.load);
	} else {
		$("body").append(msg || MsgBox.box(MsgBox.msg.load));
	}
	$("#ajaxModal").modal("show");
	if ($("#ajaxPage").size() > 0) {
		$("#ajaxPage .modal-title").html(title);
	} else {
		$("body").append(MsgBox.pagebox(title, ""));
	}
	setTimeout(function(){$("#ajaxModal").modal("hide");$("#ajaxPage").modal("show");}, MsgBox.waitTime);
};
//提交提示
MsgBox.commit = function(msg) {
	if ($("#ajaxModal").size() > 0) {
		$("#ajaxModal p").html(msg || MsgBox.msg.commit);
	} else {
		$("body").append(msg || MsgBox.box(MsgBox.msg.commit));
	}
	$("#ajaxModal").modal("show");
	setTimeout(function(){$("#ajaxModal").modal("hide");}, MsgBox.waitTime);
};
//成功提示
MsgBox.success = function(msg) {
	if ($("#ajaxModal").size() > 0) {
		$("#ajaxModal p").html(msg || MsgBox.msg.success);
	} else {
		$("body").append(msg || MsgBox.box(MsgBox.msg.success));
	}
	$("#ajaxModal").modal("show");
	setTimeout(function(){$("#ajaxModal").modal("hide");}, MsgBox.waitTime);
};
//错误提示
MsgBox.error = function(msg) {
	if ($("#ajaxModal").size() > 0) {
		$("#ajaxModal p").html(msg || MsgBox.msg.error);
	} else {
		$("body").append(msg || MsgBox.box(MsgBox.msg.error));
	}
	$("#ajaxModal").modal("show");
	setTimeout(function(){$("#ajaxModal").modal("hide")}, MsgBox.waitTime);
};
//ajax保存数据方法
MsgBox.getData = function(url, data) {
	setTimeout(function(){
		$.post(url, data, function(res) {
			if (res.status == "0") {
			   MsgBox.error(res.info);
			   setTimeout(function(){window.location.reload()}, MsgBox.waitTime);
			} else if (res.status == "1") {
			   MsgBox.success(res.info);
			   setTimeout(function(){window.location.reload()}, MsgBox.waitTime);
			}
		});
	}, MsgBox.waitTime);
}
//加载页面
MsgBox.loadPage = function(url, data) {
	setTimeout(function(){
		$("#ajaxPage .modal-body").load(url, data);
	}, MsgBox.waitTime);
}