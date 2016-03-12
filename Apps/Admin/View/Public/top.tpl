<!-- 顶部开始 -->
<header id="header">
    <!--logo start-->
    <div class="brand">
        <a href="{:U('Admin/Index/index')}" class="logo"></a>
    </div>
    <!--logo end-->
    <div class="toggle-navigation toggle-left">
        <button type="button" class="btn btn-default" id="toggle-left" data-toggle="tooltip" data-placement="right" title="Toggle Navigation"><i class="fa fa-bars"></i></button>
    </div>
    <div class="user-nav">
        <ul>
            <li class="dropdown messages">
               <span class="badge badge-danager animated bounceIn" id="new-messages">5</span>
               <button type="button" class="btn btn-default dropdown-toggle options" id="toggle-mail" data-toggle="dropdown"><i class="fa fa-envelope"></i></button>
               <ul class="dropdown-menu alert animated fadeInDown">
                  <li><h1>You have<strong>5</strong>new messages</h1></li>
                  <li>
                     <a href="#">
                        <div class="profile-photo">
                           <img src="__PUBLIC__/img/avatar.gif" alt="" class="img-circle">
                        </div>
                        <div class="message-info">
                           <span class="sender">James Bagian</span>
                           <span class="time">30 mins</span>
                           <div class="message-content">Lorem ipsum dolor sit amet, elit rutrum felis sed erat augue fusce...</div>
                        </div>
                     </a>
                  </li>
                  <li>
                     <a href="#">
                        <div class="profile-photo">
                           <img src="__PUBLIC__/img/avatar1.gif" alt="" class="img-circle">
                        </div>
                        <div class="message-info">
                           <span class="sender">Jeffrey Ashby</span>
                           <span class="time">2 hour</span>
                           <div class="message-content">hendrerit pellentesque, iure tincidunt, faucibus vitae dolor aliquam...</div>
                        </div>
                     </a>
                  </li>
                  <li>
                     <a href="#">
                        <div class="profile-photo">
                           <img src="__PUBLIC__/img/avatar2.gif" alt="" class="img-circle">
                        </div>
                        <div class="message-info">
                           <span class="sender">John Douey</span>
                           <span class="time">3 hours</span>
                           <div class="message-content">Penatibus suspendisse sit pellentesque eu accumsan condimentum nec...</div>
                        </div>
                     </a>
                  </li>
                  <li>
                     <a href="#">
                        <div class="profile-photo">
                           <img src="__PUBLIC__/img/avatar3.gif" alt="" class="img-circle">
                        </div>
                        <div class="message-info">
                           <span class="sender">Ellen Baker</span>
                           <span class="time">7 hours</span>
                           <div class="message-content">Sem dapibus in, orci bibendum faucibus tellus, justo arcu...</div>
                        </div>
                     </a>
                  </li>
                  <li>
                     <a href="#">
                        <div class="profile-photo">
                           <img src="__PUBLIC__/img/avatar4.gif" alt="" class="img-circle">
                        </div>
                        <div class="message-info">
                           <span class="sender">Ivan Bella</span>
                           <span class="time">6 hours</span>
                           <div class="message-content">Curabitur metus faucibus sapien elit, ante molestie sapien...</div>
                        </div>
                     </a>
                  </li>
                  <li><a href="#">Check all messages <i class="fa fa-angle-right"></i></a></li>
               </ul>
            </li>
            <li class="dropdown settings">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">{$Think.session.aname} <i class="fa fa-angle-down"></i></a>
                <ul class="dropdown-menu animated fadeInDown">
                    <li><a href="{:U('Admin/User/details')}/id/{$Think.session.uid}"><i class="fa fa-user"></i> 修改密码</a></li>
                    <li><a href="{:U('Admin/Articles/addArticle')}"><i class="fa fa-edit"></i> 写文章</a></li>
                    <li><a href="#"><i class="fa fa-envelope"></i> Inbox <span class="badge badge-danager" id="user-inbox">5</span></a></li>
                    <li><a href="{:U('Admin/Index/logout')}"><i class="fa fa-power-off"></i> 退出登录</a></li>
                </ul>
            </li>
            <li>
                <a href="" target="_blank" title="前台首页"><i class="fa fa-home"></i></a>
            </li>
            <!-- <li>
               <div class="toggle-navigation toggle-right">
                  <button type="button" class="btn btn-default" id="toggle-right"><i class="fa fa-comment"></i></button>
               </div>
            </li> -->
        </ul>
    </div>
</header>
<!-- 顶部结束 -->