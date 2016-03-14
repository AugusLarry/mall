<extend name="Public:layout"/>
<block name="seo">
    <title>网站设置-附件设置</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
</block>
<block name="css">
    <link rel="stylesheet" href="__PUBLIC__/plugins/icheck/css/_all.css">
</block>
<block name="content">
    <include file="Setting/secondnav"/>
    <!-- 工作区开始 -->
    <div id="rightside-content">
        <div class="panel panel-default">
            <div class="panel-heading"><h3>附件设置</h3></div>
            <div class="panel-body">
                <div class="alert alert-danger alert-dismissable">
                    设置为800X600 表示生成图片同时由高度宽度限制，设置为800表示只限制宽度高度等比
                </div>
                <form action="{:U('Admin/Setting/save')}" mini-form="commit" class="form-horizontal form-border" role="form" method="post">
                    <input type="hidden" name="K" value="attach" />
                    <input type="hidden" name="title" value="附件设置" />
                    <div class="form-group">
                        <label for="config[dir]" class="col-sm-2 control-label">附件保存位置：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[dir]" class="form-control" value="{$data.dir}">
                        </div>
                        <div class="col-sm-3">"./" 表示站点根目录，除填写服务器绝对地址外请用"./"开头</div>
                    </div>
                    <div class="form-group">
                        <label for="config[url]" class="col-sm-2 control-label">附件URL地址：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[url]" class="form-control" value="{$data.url}">
                        </div>
                        <div class="col-sm-3">"./" 表示站点根目录,也可填写"http://"开头的绝对地址</div>
                    </div>
                    <div class="form-group">
                        <label for="config[allow_exts]" class="col-sm-2 control-label">附件类型限制：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[allow_exts]" class="form-control" value="{$data.allow_exts}">
                        </div>
                        <div class="col-sm-3">通常只为图片扩展名</div>
                    </div>
                    <div class="form-group">
                        <label for="config[allow_size]" class="col-sm-2 control-label">附件大小限制：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[allow_size]" class="form-control" value="{$data.allow_size}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[watermarktype]" class="col-sm-2 control-label">水印类型：</label>
                        <div class="col-sm-6">
                            <div class="radio">
                                <input type="radio" class="icheck" name="config[watermarktype]" value <if condition="$data.watermarktype eq ''">checked="checked"</if>> 关闭水印
                                <label>关闭水印</label>
                            </div>
                            <div class="radio">
                                <input type="radio" class="icheck" name="config[watermarktype]" value="png" <if condition="$data.watermarktype eq 'png'">checked="checked"</if>> 图片水印
                                <label>水印文件：system/data/watermark/watermark.png</label>
                            </div>
                            <div class="radio">
                                <input type="radio" class="icheck" name="config[watermarktype]" value="text" <if condition="$data.watermarktype eq 'text'">checked="checked"</if>> 文字水印
                                <label>文字水印</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[watermarktext][font]" class="col-sm-2 control-label">文字水印字体：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[watermarktext][font]" class="form-control" value="{$data.watermarktext.font}">
                        </div>
                        <div class="col-sm-3">字体文件目录:system/data/watermark/*.ttf</div>
                    </div>
                    <div class="form-group">
                        <label for="config[watermarktext][size]" class="col-sm-2 control-label">文字水印大小：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[watermarktext][size]" class="form-control" value="{$data.watermarktext.size}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[watermarktext][color]" class="col-sm-2 control-label">文字水印颜色：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[watermarktext][color]" class="form-control" value="{$data.watermarktext.color}">
                        </div>
                        <div class="col-sm-3">16进制RGB颜色 如:#FF3300</div>
                    </div>
                    <div class="form-group">
                        <label for="config[watermarktext][text]" class="col-sm-2 control-label">文字水印内容：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[watermarktext][text]" class="form-control" value="{$data.watermarktext.text}">
                        </div>
                        <div class="col-sm-3">支持变量{name}上传者(用户/商家)</div>
                    </div>
                    <div class="form-group">
                        <label for="config[watermarkstatus]" class="col-sm-2 control-label">水印位置：</label>
                        <div class="col-sm-4">
                            <div class="radio">
                                <input type="radio" class="icheck" name="config[watermarkstatus]" value="1" <if condition="$data.watermarkstatus eq '1'">checked="checked"</if>>
                                <label>1#</label>
                                <input type="radio" class="icheck" name="config[watermarkstatus]" value="2" <if condition="$data.watermarkstatus eq '2'">checked="checked"</if>>
                                <label>2#</label>
                                <input type="radio" class="icheck" name="config[watermarkstatus]" value="3" <if condition="$data.watermarkstatus eq '3'">checked="checked"</if>>
                                <label>3#</label>
                            </div>
                            <div class="radio">
                                <input type="radio" class="icheck" name="config[watermarkstatus]" value="4" <if condition="$data.watermarkstatus eq '4'">checked="checked"</if>>
                                <label>4#</label>
                                <input type="radio" class="icheck" name="config[watermarkstatus]" value="5" <if condition="$data.watermarkstatus eq '5'">checked="checked"</if>>
                                <label>5#</label>
                                <input type="radio" class="icheck" name="config[watermarkstatus]" value="6" <if condition="$data.watermarkstatus eq '6'">checked="checked"</if>>
                                <label>6#</label>
                            </div>
                            <div class="radio">
                                <input type="radio" class="icheck" name="config[watermarkstatus]" value="7" <if condition="$data.watermarkstatus eq '7'">checked="checked"</if>>
                                <label>7#</label>
                                <input type="radio" class="icheck" name="config[watermarkstatus]" value="8" <if condition="$data.watermarkstatus eq '8'">checked="checked"</if>>
                                <label>8#</label>
                                <input type="radio" class="icheck" name="config[watermarkstatus]" value="9" <if condition="$data.watermarkstatus eq '9'">checked="checked"</if>>
                                <label>9#</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[watermarkquality]" class="col-sm-2 control-label">水印质量：</label>
                        <div class="col-sm-2">
                            <input type="text" name="config[watermarkquality]" class="form-control" value="{$data.watermarkquality}">
                        </div>
                        <div class="col-sm-6">设置 JPEG 类型的图片附件添加水印后的质量参数，范围为 0～100 的整数，数值越大结果图片效果越好，但尺寸也越大。</div>
                    </div>
                    <div class="form-group">
                        <label for="config[thumbquality]" class="col-sm-2 control-label">图片质量：</label>
                        <div class="col-sm-2">
                            <input type="text" name="config[thumbquality]" class="form-control" value="{$data.thumbquality}">
                        </div>
                        <div class="col-sm-6">设置 JPEG 类型的图片附件添加水印后的质量参数，范围为 0～100 的整数，数值越大结果图片效果越好，但尺寸也越大。</div>
                    </div>
                    <div class="form-group">
                        <label for="config[thumb]" class="col-sm-2 control-label">全局缩略图：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[thumb]" class="form-control" value="{$data.thumb}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[hotel][hotel]" class="col-sm-2 control-label">酒店封面：</label>
                        <div class="col-sm-4">
                            <input type="text" name="config[hotel][hotel]" class="form-control" value="{$data.hotel.hotel}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[hotel][photo]" class="col-sm-2 control-label">酒店相册：</label>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">大：</span>
                                <input type="text" name="config[hotel][photo]" class="form-control" value="{$data.hotel.photo}">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon"><input type="checkbox" name="config[hotel][watermark]" value="1" <php>if ($data['hotel']['watermark'] == "1"){echo "checked='checked'";}</php>></span>
                                <input type="text" class="form-control" value="水印(全局水印开启才生效)">
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">中：</span>
                                <input type="text" name="config[hotel][thumb]" class="form-control" value="{$data.hotel.thumb}">
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">小：</span>
                                <input type="text" name="config[hotel][small]" class="form-control" value="{$data.hotel.small}">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[shop][thumb]" class="col-sm-2 control-label">店铺图片：</label>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">缩略图：</span>
                                <input type="text" name="config[shop][thumb]" class="form-control" value="{$data.shop.thumb}">
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">LOGO：</span>
                                <input type="text" name="config[shop][logo]" class="form-control" value="{$data.shop.logo}">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[product][photo]" class="col-sm-2 control-label">商品相册：</label>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">大：</span>
                                <input type="text" name="config[product][photo]" class="form-control" value="{$data.product.photo}">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon"><input type="checkbox" name="config[product][watermark]" value="1" <php>if ($data['product']['watermark'] == "1"){echo "checked='checked'";}</php>></span>
                                <input type="text" class="form-control" value="水印(全局水印开启才生效)">
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">中：</span>
                                <input type="text" name="config[product][thumb]" class="form-control" value="{$data.product.thumb}">
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">小：</span>
                                <input type="text" name="config[product][small]" class="form-control" value="{$data.product.small}">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[album][photo]" class="col-sm-2 control-label">商家相册：</label>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">大：</span>
                                <input type="text" name="config[album][photo]" class="form-control" value="{$data.album.photo}">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon"><input type="checkbox" name="config[album][watermark]" value="1" <php>if ($data['album']['watermark'] == "1"){echo "checked='checked'";}</php>></span>
                                <input type="text" class="form-control" value="水印(全局水印开启才生效)">
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">中：</span>
                                <input type="text" name="config[album][thumb]" class="form-control" value="{$data.album.thumb}">
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">小：</span>
                                <input type="text" name="config[album][small]" class="form-control" value="{$data.album.small}">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[tuan][photo]" class="col-sm-2 control-label">团购商品：</label>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">大：</span>
                                <input type="text" name="config[tuan][photo]" class="form-control" value="{$data.tuan.photo}">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon"><input type="checkbox" name="config[tuan][watermark]" value="1" <php>if ($data['tuan']['watermark'] == "1"){echo "checked='checked'";}</php>></span>
                                <input type="text" class="form-control" value="水印(全局水印开启才生效)">
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">中：</span>
                                <input type="text" name="config[tuan][thumb]" class="form-control" value="{$data.tuan.thumb}">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[article][photo]" class="col-sm-2 control-label">学堂文章：</label>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">大：</span>
                                <input type="text" name="config[article][photo]" class="form-control" value="{$data.article.photo}">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon"><input type="checkbox" name="config[article][watermark]" value="1" <php>if ($data['article']['watermark'] == "1"){echo "checked='checked'";}</php>></span>
                                <input type="text" class="form-control" value="水印(全局水印开启才生效)">
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">中：</span>
                                <input type="text" name="config[article][thumb]" class="form-control" value="{$data.article.thumb}">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="config[editor][photo]" class="col-sm-2 control-label">编辑器图片：</label>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">大：</span>
                                <input type="text" name="config[editor][photo]" class="form-control" value="{$data.editor.photo}">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon"><input type="checkbox" name="config[editor][watermark]" value="1" <php>if ($data['editor']['watermark'] == "1"){echo "checked='checked'";}</php>></span>
                                <input type="text" class="form-control" value="水印(全局水印开启才生效)">
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon">中：</span>
                                <input type="text" name="config[editor][thumb]" class="form-control" value="{$data.editor.thumb}">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-4">
                            <button class="btn btn-primary">提交数据</button>
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