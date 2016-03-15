<form action="{:U('Admin/Setting/provinceSave')}" mini-form="commit" class="form-horizontal" role="form" method="post">
    <div class="form-group">
        <label for="data[province_name]" class="col-sm-2 control-label">省份</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="data[province_name]">
        </div>
    </div>
    <div class="form-group">
        <label for="data[orderby]" class="col-sm-2 control-label">排序</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="data[orderby]">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-2">
            <button class="btn btn-primary">提交数据</button>
        </div>
    </div>
</form>