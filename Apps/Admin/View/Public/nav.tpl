<!--菜单开始-->
<aside class="sidebar">
    <div id="leftside-navigation" class="nano">
        <ul class="nano-content">
            <li <if condition='CONTROLLER_NAME eq "Index"'>class="active"</if>><a href="{:U('Admin/Index/index')}"><i class="fa fa-dashboard"></i>首页</a></li>
            <li <if condition='CONTROLLER_NAME eq "Setting"'>class="active"</if>><a href="{:U('Admin/Setting/site')}"><i class="fa fa-gear"></i>设置</a></li>
            <li><a href=""><i class="fa fa-group"></i>会员</a></li>
            <li><a href=""><i class="fa fa-user"></i>商家</a></li>
            <li><a href=""><i class="fa fa-puzzle-piece"></i>模块</a></li>
            <li><a href=""><i class="fa fa-square"></i>应用</a></li>
            <li><a href=""><i class="fa fa-book"></i>运营</a></li>
            <li><a href=""><i class="fa fa-wrench"></i>工具</a></li>
            <li><a href=""><i class="fa fa-cogs"></i>系统</a></li>
        </ul>
        
    </div>
</aside>
<!--菜单结束-->