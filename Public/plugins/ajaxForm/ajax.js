/**
 * Created by Administrator on 2016/3/12.
 */
$(function(){
	var options = {
		beforeSubmit:  showRequest,  //提交前处理
		success:       showResponse,  //处理完成
		resetForm: true,
		dataType:  'json'
	};

	$('#my_form').submit(function() {
		$(this).ajaxSubmit(options);
	});
});
function showRequest(formData, jqForm, options) {
	$("#msg").html("正在提交...");
	return true;
}

function showResponse(responseText, statusText)  {
	$("#msg").html('提交成功');
}