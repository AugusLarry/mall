<div class="alert alert-danger alert-dismissable" style="padding: 8px;margin-bottom: 10px;">
    如果您不是开发人员，请不要修改这里
</div>
<form action="{:U('Admin/Setting/seotmplSave')}" mini-form="commit" class="form-horizontal form-border" role="form" method="post">
    <div class="form-group">
        <label for="data[title]" class="col-sm-2 control-label">标题</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="data[title]">
        </div>
    </div>
    <div class="form-group">
        <label for="data[key]" class="col-sm-2 control-label">KEY</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="data[key]">
        </div>
    </div>
    <table class="table">
    	<thead>
    		<tr>
    			<th>变量</th>
    			<th>说明</th>
    			<th><a href="###" batch="add_new_line">新增一行</a></th>
    		</tr>
    	</thead>
    	<tbody>
    		<tr>
    			<td>
    				<div class="form-group">
				        <div class="col-sm-10">
				            <input type="text" class="form-control" name="config[UJC1][k]">
				        </div>
				    </div>
    			</td>
    			<td>
    				<div class="form-group">
				        <div class="col-sm-10">
				            <input type="text" class="form-control" name="config[UJC1][v]">
				        </div>
				    </div>
    			</td>
    			<td>
    				<a href="###" batch='remove_item_line'>取消</a>
    			</td>
    		</tr>
    	</tbody>
    </table>
    <div class="form-group">
        <div class="col-sm-offset-9 col-sm-2">
            <button class="btn btn-primary">提交数据</button>
        </div>
    </div>
</form>
<script id="module_tmpl" type="text/paint">
    <tr>
        <td>
            <div class="form-group">
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="config[{index}][k]">
                </div>
            </div>
        </td>
        <td>
            <div class="form-group">
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="config[{index}][v]">
                </div>
            </div>
        </td>
        <td>
            <a href="###" batch='remove_item_line'>取消</a>
        </td>
    </tr>
</script>
<script type="text/javascript">
    window.U = window.$_G = {};
    U.$GUID = "UJC";
    U.Guid = function() {
        return U.$GUID + $_G._counter++;
    }
    $_G._counter = $_G._counter || 2;
    $(function() {
        var tmpl = $("#module_tmpl").html();
        $("a[batch='add_new_line']").click(function(){
            var k = U.Guid();
            $(this).parents("thead").next().append(tmpl.replace(new RegExp("{index}","gm"),k));
        });
        $(document).on('click', "a[batch='remove_item_line']" ,function(){
            $(this).parent().parent('tr').remove();
        });
    })
</script>