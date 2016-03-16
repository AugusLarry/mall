<form action="{:U('Admin/Setting/areaEdithandle')}" mini-form="commit" class="form-horizontal form-border" role="form" method="post">
    <input type="hidden" name="data[area_id]" value="{$data.area_id}">
    <div class="form-group">
        <label for="data[city_id]" class="col-sm-2 control-label">城市</label>
        <div class="col-sm-4">
            {:W('Data/City', [$data['area_id']])}
        </div>
    </div>
    <div class="form-group">
        <label for="data[area_name]" class="col-sm-2 control-label">地区</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="data[area_name]" value="{$data.area_name}">
        </div>
    </div>
    <div class="form-group">
        <label for="data[orderby]" class="col-sm-2 control-label">排序</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="data[orderby]" value="{$data.orderby}">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-2">
            <button class="btn btn-primary">提交数据</button>
        </div>
    </div>
</form>