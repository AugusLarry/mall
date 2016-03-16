<select name="data[province_id]" class="form-control input-sm">
    <volist name="data" id="v">
        <option value="{$v.province_id}" <if condition="$province_id eq $v['province_id']">selected</if>>{$v.province_name}</option>
    </volist>
</select>