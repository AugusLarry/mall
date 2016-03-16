<form action="{:U('Admin/Setting/attrSave')}" mini-form="commit" class="form-horizontal form-border" role="form" method="post">
    <div class="form-group">
        <label for="data[title]" class="col-sm-2 control-label">属性名称</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="data[title]">
        </div>
    </div>
    <div class="form-group">
        <label for="data[title]" class="col-sm-2 control-label">属性分类</label>
        <div class="col-sm-4">
            {:W('Data/attrfrom')}
        </div>
    </div>
    <div class="form-group">
        <label for="data[multi]" class="col-sm-2 control-label">是否多选</label>
        <div class="col-sm-4">
            <select name="data[multi]" class="form-control input-sm">
                <option value="Y">多选</option>
                <option value="N">单选</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label for="data[filter]" class="col-sm-2 control-label">可搜索</label>
        <div class="col-sm-4">
            <select name="data[filter]" class="form-control input-sm">
                <option value="Y">是</option>
                <option value="N">否</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label for="data[orderby]" class="col-sm-2 control-label">排序</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="data[orderby]" value="50">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-2">
            <button class="btn btn-primary">提交数据</button>
        </div>
    </div>
</form>