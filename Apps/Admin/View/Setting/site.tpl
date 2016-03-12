<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
</block>
<block name="css">
    <link rel="stylesheet" href="__PUBLIC__/plugins/icheck/css/_all.css">
</block>
<block name="content">
    <!-- 左侧导航开始 -->
    <div id="leftside-navigation" class="nano secondnav">
        <p style="padding:15px 20px;font-size:24px;font-weight:bold;margin-bottom:0px;">设置</p>
        <ul class="nano-content" id="home_nav">
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-caret-right"></i><span>网站设置</span></a>
                <ul>
                    <li><a href="">基本设置</a></li>
                    <li><a href="">附件设置</a></li>
                    <li><a href="">3G版设置</a></li>
                    <li><a href="">网站公告</a></li>
                    <li><a href="">访问设置</a></li>
                    <li><a href="">积分设置</a></li>
                    <li><a href="">评论设置</a></li>
                    <li><a href="">URL设置</a></li>
                    <li><a href="">域名设置</a></li>
                    <li><a href="">全站SEO</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-caret-right"></i><span>城市设置</span></a>
                <ul>
                    <li><a href="">省份管理</a></li>
                    <li><a href="">城市管理</a></li>
                    <li><a href="">地区管理</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-caret-right"></i><span>属性设置</span></a>
                <ul>
                    <li><a href="">属性分类</a></li>
                    <li><a href="">属性列表</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-caret-right"></i><span>基础数据</span></a>
                <ul>
                    <li><a href="">过滤词列表</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-caret-right"></i><span>支付配置</span></a>
                <ul>
                    <li><a href="">支付接口</a></li>
                    <li><a href="">支付流水</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:void(0);"><i class="fa fa-caret-right"></i><span>界面设置</span></a>
                <ul>
                    <li><a href="">导航设置</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- 左侧导航结束 -->
    <!-- 工作区开始 -->
    <div id="rightside-content">
        <div class="panel panel-default">
            <div class="panel-heading"><h3>基本设置</h3></div>
            <div class="panel-body">
                <form action="{:U('Admin/Setting/save')}" id="my_form" class="form-horizontal" role="form" method="post">
                    <div class="form-group">
                        <label for="title" class="col-sm-1 control-label">网站名称：</label>
                        <div class="col-sm-4">
                            <input type="text" name="title" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="siteurl" class="col-sm-1 control-label">网站网址：</label>
                        <div class="col-sm-4">
                            <input type="text" name="siteurl" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-1 control-label">联系邮箱：</label>
                        <div class="col-sm-4">
                            <input type="email" name="email" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="kfqq" class="col-sm-1 control-label">客服QQ：</label>
                        <div class="col-sm-4">
                            <input type="text" name="kfqq" class="form-control">
                        </div>
                        <div class="col-sm-2">多个QQ用","分隔</div>
                    </div>
                    <div class="form-group">
                        <label for="phone" class="col-sm-1 control-label">联系电话：</label>
                        <div class="col-sm-4">
                            <input type="text" name="phone" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="logo" class="col-sm-1 control-label">网站LOGO：</label>
                        <div class="col-sm-4">
                            <input type="file" name="logo" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="weixinqr" class="col-sm-1 control-label">微信二维码：</label>
                        <div class="col-sm-4">
                            <input type="file" name="weixinqr" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-1 control-label">开户3G版：</label>
                        <div class="col-sm-4">
                            <label for="mobile" class="radio-inline">
                                <input type="radio" class="icheck" name="mobile"> 开启
                            </label>
                            <label for="mobile" class="radio-inline">
                                <input type="radio" class="icheck" checked="" name="mobile"> 关闭
                            </label>
                        </div>
                        <div class="col-sm-2">请务必在 网站设置->3G版设置中配置正确，否刚网站可能无法运行</div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-1 control-label">UCenter：</label>
                        <div class="col-sm-4">
                            <label for="ucenter" class="radio-inline">
                                <input type="radio" class="icheck" name="ucenter"> 开启
                            </label>
                            <label for="ucenter" class="radio-inline">
                                <input type="radio" class="icheck" checked="" name="ucenter"> 关闭
                            </label>
                        </div>
                        <div class="col-sm-2">请务必在 会员->登录接口->UCenter设置中配置正确，否则网站可能无法运行</div>
                    </div>
                    <div class="form-group">
                        <label for="city_id" class="col-sm-1 control-label">默认城市：</label>
                        <div class="col-sm-4">
                            <select name="city_id" class="form-control">
                                <option value="">温州</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="multi_city" class="col-sm-1 control-label">开启多城市：</label>
                        <div class="col-sm-4">
                            <label for="ucenter" class="radio-inline">
                                <input type="radio" class="icheck" name="multi_city"> 开启
                            </label>
                            <label for="ucenter" class="radio-inline">
                                <input type="radio" class="icheck" checked="" name="multi_city"> 关闭
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="domain" class="col-sm-1 control-label">根域名：</label>
                        <div class="col-sm-4">
                            <input type="text" name="domain" class="form-control">
                        </div>
                        <div class="col-sm-2">开启多城市或设置频道域名，必须设置此项否则网站无法打开</div>
                    </div>
                    <div class="form-group">
                        <label for="rewrite" class="col-sm-1 control-label">开启伪静态：</label>
                        <div class="col-sm-4">
                            <label for="ucenter" class="radio-inline">
                                <input type="radio" class="icheck" name="rewrite"> 开启
                            </label>
                            <label for="ucenter" class="radio-inline">
                                <input type="radio" class="icheck" checked="" name="rewrite"> 关闭
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-1 control-label">网站简介：</label>
                        <div class="col-sm-4">
                            <textarea name="description" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="census" class="col-sm-1 control-label">统计代码：</label>
                        <div class="col-sm-4">
                            <textarea name="census" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="icp" class="col-sm-1 control-label">备案信息：</label>
                        <div class="col-sm-4">
                            <input type="text" name="icp" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-1 col-sm-4">
                            <input type="submit" class="btn btn-primary" value="提交数据">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- 工作区结束 -->
</block>
<block name="js">
    <script src="__PUBLIC__/plugins/countTo/jquery.countTo.js"></script>
    <script src="__PUBLIC__/plugins/icheck/js/icheck.min.js"></script>
    <script src="__PUBLIC__/plugins/ajaxForm/jquery.ajaxForm.js"></script>
    <script src="__PUBLIC__/plugins/ajaxForm/ajax.js"></script>
    <script>
        $(document).ready(function() {
            app.timer();
            $('input').iCheck({
                checkboxClass: 'icheckbox_flat-grey',
                radioClass: 'iradio_flat-grey'
            });
        });
    </script>
</block>