<select name="data[city_id]" class="form-control input-sm">
    <volist name="data" id="v">
        <option value="{$v.city_id}" <if condition="$city_id eq $v['city_id']">selected</if>>{$v.city_name}</option>
    </volist>
</select>