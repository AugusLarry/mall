<select name="data[from_id]" class="form-control input-sm">
    <volist name="data" id="v">
        <option value="{$v.from_id}" <if condition="$from_id eq $v['from_id']">selected</if>>{$v.title}</option>
    </volist>
</select>