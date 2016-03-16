<div class="alert alert-danger alert-dismissable" style="padding: 8px;margin-bottom: 10px;">
    批量添加地区，一行一个
</div>
<form action="{:U('Admin/Setting/areaSave')}" mini-form="commit" class="form-horizontal" role="form" method="post">
    <div class="form-group">
        <label for="data[province_id]" class="col-sm-2 control-label">省份</label>
        <div class="col-sm-6">
            {:W('Data/Province')}
        </div>
    </div>
    <div class="form-group">
        <label for="data[city_id]" class="col-sm-2 control-label">城市</label>
        <div class="col-sm-6">
            <select name="data[city_id]" class="form-control input-sm"></select>
        </div>
    </div>
    <div class="form-group">
        <label for="data[area_name]" class="col-sm-2 control-label">地区</label>
        <div class="col-sm-4">
            <textarea name="data[area_name]" class="form-control"></textarea>
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
<script type="text/javascript">
    $(function () {
        $("select[name='data[province_id]']").on('change', function() {
            var province_id = $(this).val();
            if (!province_id) {return false;}
            $.getJSON("{:U('Admin/Setting/getCitysForProvince')}/province_id/"+province_id, function(res) {
                if (res.error) {
                    MsgBox.error("该省份还没有城市!");
                    $("select[name='data[city_id]']").html('<option value="">--</option>');
                } else if (res.citys.length > 0) {
                    var html = "";
                    for (var i=0; i<res.citys.length; i++) {
                        html += '<option value="'+res.citys[i ].city_id+'">'+res.citys[i ].city_name+'</option>';
                    }
                    $("select[name='data[city_id]']").html(html);
                    $("select[name='data[city_id]']").change();
                } else {
                $("select[name='data[city_id]']").html('<option value="">--</option>');
                $("select[name='data[city_id]']").change();
            }
            })
        }).change();
    })
</script>