/**
 * Created by Administrator on 2016/3/12.
 */
$(function () {
	//表单ajax提交
	$(document).off("submit").on("submit", "form[mini-form]", function(){
		MsgBox.commit();
		var url = $(this).attr("action");
		var data = $(this).serialize();
		MsgBox.getData(url, data);
		return false;
	})
	//链接加载弹出窗
	$("[mini-load]").off("click").on("click", function(){
		var title = $(this).html();
		MsgBox.load("", title);
		var url = $(this).attr("href") || $(this).attr("action");
		var data =  {"id": $(this).attr("data")};
		MsgBox.loadPage(url, data);
		return false;
	})
})