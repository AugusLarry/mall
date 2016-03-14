<div class="alert alert-danger alert-dismissable" style="padding: 8px;margin-bottom: 10px;">
    如果您不是开发人员，请不要修改这里
</div>
<form class="form-horizontal" role="form">
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
    <table class="table" style="margin-bottom: 0px;">
    	<thead>
    		<tr>
    			<th>变量</th>
    			<th>说明</th>
    			<th><a href="" batch="add_new_line">新增一行</a></th>
    		</tr>
    	</thead>
    	<tbody>
    		<tr>
    			<td>
    				<div class="form-group">
				        <div class="col-sm-10">
				            <input type="text" class="form-control" name="config[KT1][k]">
				        </div>
				    </div>
    			</td>
    			<td>
    				<div class="form-group">
				        <div class="col-sm-10">
				            <input type="text" class="form-control" name="config[KT1][v]">
				        </div>
				    </div>
    			</td>
    			<td>
    				<a href="">取消</a>
    			</td>
    		</tr>
    	</tbody>
    </table>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-4">
            <button class="btn btn-primary">提交数据</button>
        </div>
    </div>
</form>