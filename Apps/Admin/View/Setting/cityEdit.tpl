<form action="{:U('Admin/Setting/cityEdithandle')}" mini-form="commit" class="form-horizontal" role="form" method="post">
    <input type="hidden" name="data[city_id]" value="{$data.city_id}">
    <div class="form-group">
        <label for="data[province_id]" class="col-sm-3 control-label">省份</label>
        <div class="col-sm-6">
            {:W('Data/Province', [$data['city_id']])}
        </div>
    </div>
    <div class="form-group">
        <label for="data[city_name]" class="col-sm-3 control-label">城市</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" name="data[city_name]" value="{$data.city_name}">
        </div>
    </div>
    <div class="form-group">
        <label for="data[pinyin]" class="col-sm-3 control-label">拼音</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" name="data[pinyin]" value="{$data.pinyin}">
        </div>
    </div>
    <div class="form-group">
        <label for="data[pinyin]" class="col-sm-3 control-label">模板</label>
        <div class="col-sm-6">
            <select name="data[theme_id]" class="form-control input-sm">
                <option value="1">默认模板</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label for="data[logo]" class="col-sm-3 control-label">分站LOGO</label>
        <div class="col-sm-6">
            <input type="file" name="data[logo]" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <label for="data[weixinqr]" class="col-sm-3 control-label">微信二维码</label>
        <div class="col-sm-6">
            <input type="file" name="data[weixinqr]" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <label for="data[phone]" class="col-sm-3 control-label">电话</label>
        <div class="col-sm-6">
            <input type="text" name="data[phone]" class="form-control" value="{$data.phone}">
        </div>
    </div>
    <div class="form-group">
        <label for="data[mobile]" class="col-sm-3 control-label">手机</label>
        <div class="col-sm-6">
            <input type="text" name="data[mobile]" class="form-control" value="{$data.mobile}">
        </div>
    </div>
    <div class="form-group">
        <label for="data[mail]" class="col-sm-3 control-label">联系邮箱</label>
        <div class="col-sm-6">
            <input type="text" name="data[mail]" class="form-control" value="{$data.mail}">
        </div>
    </div>
    <div class="form-group">
        <label for="data[kfqq]" class="col-sm-3 control-label">客服QQ</label>
        <div class="col-sm-6">
            <input type="text" name="data[kfqq]" class="form-control" value="{$data.kfqq}">
        </div>
    </div>
    <div class="form-group">
        <label for="data[seo_title]" class="col-sm-3 control-label">seo标题</label>
        <div class="col-sm-6">
            <input type="text" name="data[seo_title]" class="form-control" value="{$data.seo_title}">
        </div>
    </div>
    <div class="form-group">
        <label for="data[seo_keywords]" class="col-sm-3 control-label">seo关键词</label>
        <div class="col-sm-6">
            <input type="text" name="data[seo_keywords]" class="form-control" value="{$data.seo_keywords}">
        </div>
    </div>
    <div class="form-group">
        <label for="data[seo_description]" class="col-sm-3 control-label">seo描述</label>
        <div class="col-sm-6">
            <textarea name="data[seo_description]" class="form-control">{$data.seo_description}</textarea>
        </div>
    </div>
    <div class="form-group">
        <label for="data[tongji]" class="col-sm-3 control-label">统计代码</label>
        <div class="col-sm-6">
            <textarea name="data[tongji]" class="form-control">{$data.tongji}</textarea>
        </div>
    </div>
    <div class="form-group">
        <label for="data[audit]" class="col-sm-3 control-label">状态</label>
        <div class="col-sm-6">
            <label for="data[audit]" class="radio-inline">
                <input type="radio" class="icheck" name="data[audit]" value="1" <if condition="$data.audit eq 1">checked="checked"</if>> 开启
            </label>
            <label for="data[audit]" class="radio-inline">
                <input type="radio" class="icheck" name="data[audit]" value="0" <if condition="$data.audit eq 0">checked="checked"</if>> 关闭
            </label>
        </div>
    </div>
    <div class="form-group">
        <label for="data[orderby]" class="col-sm-3 control-label">排序</label>
        <div class="col-sm-6">
            <input type="text" name="data[orderby]" class="form-control" value="{$data.orderby}">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-3">
            <button class="btn btn-primary">提交数据</button>
        </div>
    </div>
</form>