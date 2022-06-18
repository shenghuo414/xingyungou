<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Center.aspx.cs" Inherits="LuckyPurchase.Pages.Center" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人中心</title>
    <link rel="icon" href="../Images/Logo.png" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,700" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet"/>

    <!-- Icon Fonts -->
    <link href="../Css/style.css" rel="stylesheet"/>

    <!-- Styles -->
    <link href="../Css/solarized-light.css" rel="stylesheet"/>
    <link href="../Css/solarized-light.css" rel="stylesheet"/>
    <link href="../Css/grstyle.css" rel="stylesheet"/>

    <!-- Modernizer -->
    <script type="text/javascript" src="../Js/modernizr-3.3.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
             <div class="ace-wrapper" runat="server">
         <header id="ace-header" class="ace-container-shift ace-logo-in ace-head-boxed ace-nav-right">
             <div class="ace-head-inner">
                 <div class="ace-head-container ace-container">
                     <div class="ace-head-row">
                         <div id="ace-head-col1" class="ace-head-col text-left">
                             <a id="ace-logo" class="ace-logo" href="index.aspx">
                                <img src="../Images/稿定抠图.png" alt="ace resume" style="margin-right:-390px;width:600px; height:200px;"/>
                             </a>
                         </div>
                         
                         <div style="text-align:center" id="ace-head-col2" class="ace-head-col text-right">
                             <div class="ace-nav-container ace-container hidden-sm hidden-xs">
                                 <nav id="ace-main-nav">
                                    <ul class="clear-list">
										<li><a href="index.aspx">首页</a></li>
										<li><a href="abount.aspx">所有商品</a></li>
										<li><a href="Luck.aspx">幸运揭晓</a></li>
										<li><a href="NewbieGuide.aspx">新手指导</a></li>
										<li><a href="ShoppingCart.aspx">购物车</a></li>
										<li><a href="contact.aspx">联系我们</a></li>
										
									</ul>
                                 </nav>
                             </div>
                         </div>
                         
                         <div id="ace-head-col3" class="ace-head-col text-right">
                             
                         </div>
                     </div>
                 </div><!-- .ace-container -->
             </div><!-- .ace-head-inner -->
        </header><!-- #ace-header -->

        
       

        <div  id="ace-card" class="ace-card bg-primary">
			<div class="ace-card-inner text-center">
                <asp:ImageButton ID="ImageButton1"  class="avatar avatar-195" width="195" height="195" runat="server" />
                       
				<%--<img class="avatar avatar-195" src="../Images/ss.png" width="195" height="195" alt=""/>--%>
				<h1>
                <asp:Label ID="Label1" runat="server" Text="昵称"></asp:Label></h1>
				<p class="text-muted">
                    购物|消费
                </p>
				<ul class="ace-social clear-list">
					<li><a><span class="ace-icon ace-icon-qq"></span></a></li>
					<li><a><span class="ace-icon ace-icon-weixin"></span></a></li>
					<li><a><span class="ace-icon ace-icon-weibo"></span></a></li>		
				</ul>
			</div>

			<div  class="ace-card-footer" runat="server">
				<a style="height:40px;" href="#" runat="server" id="zhuxiao">
                    <asp:LinkButton ID="LinkButton1" class="btn btn-lg btn-block btn-thin btn-upper " style="text-decoration:none;" runat="server" OnClick="LinkButton1_Click">返回</asp:LinkButton>
                    
                   <%-- <asp:Button ID="Button1" runat="server" Text="注销登录" Class="btn btn-lg btn-block btn-thin btn-upper" />--%>
				</a>
			</div>
		</div><!-- #ace-card -->

        <div style="margin-left:100px" id="ace-content" class="ace-container-shift">
            <div  class="ace-container">                
                    <div  id="ace-nav-wrap" class="hidden-sm hidden-xs">
                        <div  class="ace-nav-cont">
                            <div  id="ace-nav-scroll">                                
                            </div>
                            <div  id="ace-nav-tools" class="hidden">
                                <span class="ace-icon ace-icon-dots-three-horizontal"></span>
                                <button id="ace-nav-arrow" class="clear-btn">
                                    <span class="ace-icon ace-icon-chevron-thin-down"></span>
                                </button>
                            </div>
                        </div>
                        <div  class="ace-nav-btm"></div>
                    </div><!-- .ace-nav-wrap -->

                <div class="ace-paper-stock">
                    <main class="ace-paper clearfix">
                        <div class="ace-paper-cont clear-mrg">
						
						<!-- START: PAGE CONTENT -->
    <div  class="padd-box clear-mrg">
        <section style="height:80px;"  class="section brd-btm">
            <div  class="row">
                <div class="col-sm-12 clear-mrg text-box">
                    <h2 class="title-lg text-upper">个人资料</h2>

                   <%-- <p><b>简介</b><br>
                        我我我我我我我我我我</p>--%>

                   
                </div>
            </div>
        </section><!-- .section -->

        <section class="section brd-btm" runat="server" >
            <div class="row">
                <div class="col-sm-6 clear-mrg">
                    <h2 class="title-thin text-muted">个人信息</h2>
                    
                    <dl class="dl-horizontal clear-mrg">
                        <dt class="text-upper">我的昵称</dt>
                        <dd><asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox></dd>

                        <%--<dt class="text-upper">出生年月</dt>
                        <dd>1999/10/23</dd>
<dt class="text-upper">性别</dt>
                        <dd>女</dd>--%>
                       <%-- <dt class="text-upper">地址</dt>
                        <dd><asp:Label ID="dizhi1" runat="server" Text="无"></asp:Label></dd>--%>

                        <%--<dt class="text-upper">邮箱</dt>
                        <dd><a href="1534855819@qq.com">1534855819@qq.com</a></dd>--%>

                        <dt class="text-upper">手机号码</dt>
                        <dd><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></dd>
                        <dt class="text-upper">头像上传</dt>
                        <dd><asp:FileUpload ID="FileUpload1" Width="120" runat="server" /> 
                    <asp:Button ID="Button2" runat="server" Width="50" Text="上传" OnClick="Button2_Click" /></dd>
                        <dd><asp:ImageButton ID="ImageButton2" width="195" height="195" runat="server" /></dd>
                    </dl>                 
                </div><!-- .col-sm-6 -->

                <div class="col-sm-6 clear-mrg" runat="server">
                    <h2 class="title-thin text-muted">收货地址</h2>

                    <div runat="server" class="progress-bullets ace-animate" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="10">
                        <strong class="progress-title">默认地址</strong>
                        <p runat="server"><asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox></p>
                    </div>

                    <div class="progress-bullets ace-animate" role="progressbar" aria-valuenow="8" aria-valuemin="0" aria-valuemax="10">
                        <strong class="progress-title">地址一</strong>
                        <p runat="server"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></p>
                    </div>

                    <div class="progress-bullets ace-animate" role="progressbar" aria-valuenow="7" aria-valuemin="0" aria-valuemax="10">
                        <strong class="progress-title">地址二</strong>
                         <p runat="server"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></p>
                    </div>
                    <div>
                        <asp:Button ID="Button1" style="margin-left:250px;height:34px;width:100px;border-radius:20px;" runat="server" Text="修改信息" OnClick="Button1_Click" />
                    </div>
                </div><!-- .col-sm-6 -->
            </div><!-- .row -->
        </section><!-- .section -->

        <section class="section brd-btm">
            <div class="row">
                <div class="col-sm-6 clear-mrg">
                    <h2 class="title-thin text-muted">个人标签</h2>

                    <div class="row">
                        <div class="col-xs-4">
                            <div class="progress-chart ace-animate" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                                <div class="progress-bar" data-text="90%" data-value="0.9"></div>
                                <strong class="progress-title">土豪</strong>
                            </div>
                        </div><!-- .col-xs-4 -->

                        <div class="col-xs-4">
                            <div class="progress-chart ace-animate" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100">
                                <div class="progress-bar" data-text="81%" data-value="0.81"></div>
                                <strong class="progress-title">买买买</strong>
                            </div>
                        </div><!-- .col-xs-4 -->

                        <!--<div class="col-xs-4">
                            <div class="progress-chart ace-animate" role="progressbar" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100">
                                <div class="progress-bar" data-text="66%" data-value="0.66"></div>
                                <strong class="progress-title">UI Design</strong>
                            </div>
                        </div><!-- .col-xs-4 -->
                    </div><!-- .row -->
                </div><!-- .col-sm-6 -->

                <div class="col-sm-6 clear-mrg">
                    <h2 class="title-thin text-muted">已参与商品</h2>

                    <div class="progress-line ace-animate" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                        <strong class="progress-title">苹果13</strong>
                        <div class="progress-bar" data-text="90%" data-value="0.9"></div>
                    </div>

                    <div class="progress-line ace-animate" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
                        <strong class="progress-title">华为P50</strong>
                        <div class="progress-bar" data-text="80%" data-value="0.8"></div>
                    </div>

                   
                </div><!-- .col-sm-6 -->
            </div><!-- .row -->
        </section><!-- .section -->

        <section class="section brd-btm">
            <div class="row">
                <div class="col-sm-6 clear-mrg">
                    <h2 class="title-thin text-muted">已揭晓商品</h2>

                    <div class="progress-line ace-animate" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                        <strong class="progress-title">华为P50</strong>
                        <div class="progress-bar" data-text="90%" data-value="0.9"></div>
                    </div>

                    <div class="progress-line ace-animate" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
                        <strong class="progress-title">外星人电脑</strong>
                        <div class="progress-bar" data-text="80%" data-value="0.8"></div>
                    </div>

                    
                </div><!-- .col-sm-6 -->

                <div class="col-sm-6 clear-mrg">
                    <h2 class="title-thin text-muted">已中奖商品</h2>

                    <ul class="styled-list clear-mrg">
                        <li>外星人电脑</li>
                        <!--<li>New Tara</li>
                        <li>Abbeyshire</li>
                        <li>Kassulkechester</li>-->
                    </ul>
                </div><!-- .col-sm-6 -->
            </div><!-- .row -->
        </section><!-- .section -->
        <div class="tlinks">Collect from <a href="https://www.gxjsxy.cn/" ></a></div>

        <section class="section brd-btm">
            <div class="row">
                <div class="col-sm-12 clear-mrg">
                    <h2 class="title-thin text-muted">最近浏览</h2>
                    <ul class="icon-list icon-list-col3 clearfix">
                        <li><span class="ace-icon ace-icon-music"></span> 华为P50</li>
                        <li><span class="ace-icon ace-icon-blog"></span> 苹果13</li>
                        <li><span class="ace-icon ace-icon-blog"></span> 外星人电脑</li>                       
                    </ul>
                </div>
            </div>
        </section><!-- .section -->

        <section class="section">
            <h2 class="title-thin text-muted"></h2>

            
        </section><!-- .section -->
    </div><!-- .padd-box -->
<!-- END: PAGE CONTENT -->
						
                </div><!-- .ace-paper-cont -->
            </main><!-- .ace-paper -->
        </div><!-- .ace-paper-stock -->

        </div><!-- .ace-container -->
    </div><!-- #ace-content -->

   

    <footer style="margin-right:50px" id="ace-footer" class="ace-container-shift">
        <div class="ace-container">
			<div class="ace-footer-cont clear-mrg">
				&copy; 2022 All right reserved. Designed by <a href="https://www.gxjsxy.cn/" target="_blank">广西建院.</a> -  More Templates <a href="https://www.gxjsxy.cn/" target="_blank" title="建院">发财</a> - Collect from <a href="https://www.gxjsxy.cn/" title="建院" target="_blank">两元购</a>
              		</div>
        </div><!-- .ace-container -->
    </footer><!-- #ace-footer -->

    <!-- Triangle Shapes -->
    <svg id="ace-bg-shape-1" class="hidden-sm hidden-xs" height="519" width="758">
        <polygon points="0,455,693,352,173,0,92,0,0,71" style="fill:#d2d2d2;stroke:purple;stroke-width:0; opacity: 0.5"/>
    </svg>

    <svg id="ace-bg-shape-2" class="hidden-sm hidden-xs" height="536" width="633">
        <polygon points="0,0,633,0,633,536" style="fill:#c0e3e7;stroke:purple;stroke-width:0" />
    </svg>
</div><!-- .ace-wrapper -->

    </form>
    <!-- Scripts -->
<script type="text/javascript" src="../Js/jquery-1.12.4.min.js"></script>


<!---<script type="text/javascript" src="http://ditu.google.cn/maps/api/js?key=AIzaSyDiwY_5J2Bkv2UgSeJa4NOKl6WUezSS9XA"></script>--->
<script type="text/javascript" src="js/plugins/highlight/highlight.pack.js"></script>
<script type="text/javascript" src="js/plugins/jquery.mCustomScrollbar.min.js"></script>
<script type="text/javascript" src="js/plugins/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="js/plugins/progressbar.min.js"></script>
<script type="text/javascript" src="js/plugins/slick.min.js"></script>

<script type="text/javascript" src="js/options.js"></script>
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
