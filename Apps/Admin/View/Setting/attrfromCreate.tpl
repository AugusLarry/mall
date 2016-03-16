<form action="{:U('Admin/Setting/attrfromSave')}" mini-form="commit" class="form-horizontal form-border" role="form" method="post">
    <div class="form-group">
        <label for="data[from]" class="col-sm-2 control-label">来源KEY</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="data[from]">
        </div>
    </div>
    <div class="form-group">
        <label for="data[title]" class="col-sm-2 control-label">标题</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="data[title]">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-2">
            <button class="btn btn-primary">提交数据</button>
        </div>
    </div>
</form>