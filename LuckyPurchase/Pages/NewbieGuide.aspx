<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewbieGuide.aspx.cs" Inherits="LuckyPurchase.Pages.NewbieGuide1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="icon" href="../../Images/Logo.png" />
    <title>新手指南</title>
    <link rel="stylesheet" type="text/css" href="../Css/lrtk.css" />
	<!-- Bootstrap core CSS -->
	<link href="../Css/bootstrap.min.css" rel="stylesheet"/>
	<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<!-- Custom styles for this template -->
	<link href="../Css/style.css" rel="stylesheet"/>
	<link href="../fonts/antonio-exotic/stylesheet.css" rel="stylesheet"/>
	<link rel="stylesheet" href="../Css/lightbox.min.css"/>
	<link href="../Css/responsive.css" rel="stylesheet"/>
	<script src="../Js/jquery.min.js" type="text/javascript"></script>
	<script src="../Js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../Js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
	<script src="../Js/instafeed.min.js" type="text/javascript"></script>
	<script src="../Js/custom.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="page">
			<!---header top---->
			<div class="top-header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <!--                            <a href="#"> </a>
                                                        <div class="info-block"><i class="fa fa-map"></i>701 Old York Drive Richmond USA.</div>-->
                        </div>
                        <div class="col-md-6">
                            <div class="social-grid">
                                <ul class="list-unstyled text-right">
                                	<li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">登录</asp:LinkButton>&nbsp;&nbsp;-&nbsp;&nbsp;
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">注册</asp:LinkButton>&nbsp;&nbsp;-&nbsp;&nbsp;
                                        <a href="Backstage.aspx">后台管理</a>
                                	</li>                                                                       
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--header--->
            <header class="header-container">
                <div class="container">
                    <div class="top-row">
                        <div class="row">
                            <div class="col-md-2 col-sm-6 col-xs-6">
                                <div style="margin-top:-25px;margin-left:20px" id="logo">
                                    <!--<a href="index.html"><img src="../Images/logo.png" alt="logo"></a>-->
                                    <a href="index.aspx"><img src="../Images/Logo.png" width="150" height="80"/></a>
                                </div>                       
                            </div>
                            <div class="col-sm-6 visible-sm">
                                <div class="text-right"><button type="button" class="book-now-btn">Book Now</button></div>
                            </div>
                            <div class="col-md-8 col-sm-12 col-xs-12 remove-padd">
                                <nav class="navbar navbar-default">
                                    <div class="navbar-header page-scroll">
                                        <button data-target=".navbar-ex1-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>

                                    </div>
                                    <div class="collapse navigation navbar-collapse navbar-ex1-collapse remove-space">
                                        <ul class="list-unstyled nav1 cl-effect-10">
                                            <li><a  data-hover="首页" href="index.aspx"><span>首页</span></a></li>
                                            <li><a data-hover="所有商品"  href="abount.aspx"><span>所有商品</span></a></li>
                                            <li><a data-hover="幸运揭晓"  href="Luck.aspx"><span>幸运揭晓</span></a></li>
                                            <li><a data-hover="新手指南" class="active"><span>新手指南</span></a></li>
                                            <li><a data-hover="购物车"  href="ShoppingCart.aspx"><span>购物车</span></a></li>                                          
                                            <li><a data-hover="联系我们" href="contact.aspx"><span>联系我们</span></a></li>
                                        </ul>

                                    </div>
                                </nav>
                            </div>
                            <div class="col-md-2  col-sm-4 col-xs-12 hidden-sm">
                                <div class="text-right">
                                    <button type="button" class="book-now-btn">
                                        <a href="Center.aspx"><asp:Label ID="Label1" runat="server" Text="个人中心"></asp:Label></a></button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

			<!--end-->
			<!--<section class="image-head-wrapper" style="background-image: url('../Images/banner2.jpg');">
                <div class="inner-wrapper">
                    <h1>dinning</h1>
                </div>
            </section>-->
			<div id="xszd">
				<img src="../Images/xs.png" width="850" />
			</div>
			<div id="guize">
				<img src="../Images/Guide_10.jpg" />
				<p>每件商品参考市场价平分成相应“等份”，每份2元，1份对应1个云购码。<br />
					同一件商品可以购买多次或一次购买多份。<br />
					当一件商品所有“等份”全部售出后计算出“幸运云购码”，拥有“幸运云购码”者即可获得此商品。</p>

			</div>

			<!--end-->
			<!---footer--->
		<footer>
                <div class="container">
                    <div class="rowo">
                        <div class="col-md-3 col-sm-6 col-xs-12 width-set-50">
                            <div class="footer-details">
                                <h4>联系我们</h4>
                                <ul class="list-unstyled footer-contact-list">
                                    <li>
                                        <i class="fa fa-map-marker fa-lg"></i>
                                        <p>广西南宁市建院两元购发财公司</p>
                                    </li>
                                    <li>
                                        <i class="fa fa-phone fa-lg"></i>
                                        <p>666666</p>
                                    </li>
                                    <li>
                                        <i class="fa fa-envelope-o fa-lg"></i>
                                        <p>666666@qq.com</p>
                                    </li>
                                </ul>
                                <div class="footer-social-icon">
                                    <a href="#"><i class="fa fa-qq"></i></a>
                                    <a href="#"><i class="fa fa-weixin"></i></a>                           
                                    <a href="#"><i class="fa fa-weibo"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                </div>
                                
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12 width-50 width-set-50">
                            <div class="footer-details">
                                <h4>目录一览</h4>
                                <ul class="list-unstyled footer-links">
                                    <li class="active"><a>首页</a></li>
                                    <li><a href="abount.aspx">所有商品</a></li>
                                    <li><a href="Luck.aspx">幸运揭晓</a></li>
                                    <li><a href="NewbieGuide.aspx">新手指南</a></li>
                                    <li><a href="ShoppingCart.aspx">购物车</a></li>
                                    <li> <a href="contact.aspx">联系我们</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                        	<div id="dibu">
                        		<div class="footer-details">
                                <h4>一个专注于你的发财的网站</h4>
                                <div class="row">
                                	<a href="index.aspx"><img src="../Images/Logo.png" width="300" height="300"/></a>
                                    <div class="instagram-images">
                                        <div id="instafeed"></div>
                                    </div>
                                </div>
                            </div>
                        	</div>
                            
                        </div>
                    </div>

                    <div class="copyright">
                        &copy; 2022 All right reserved. Designed by <a href="https://www.gxjsxy.cn/" target="_blank">广西建院.</a> -  More Templates <a href="https://www.gxjsxy.cn/" target="_blank" title="建院">发财</a> - Collect from <a href="https://www.gxjsxy.cn/" title="建院" target="_blank">两元购</a>
                    </div>

                </div>
            </footer>

			<!--back to top--->
			<!-- 代码开始 -->
			<div id="leftsead">
				<ul>
					<li>
						<a href="javascript:void(0)" class="youhui">
							<img src="../Images/l02.png" width="47" height="49" class="shows" />
							<img src="../Images/a.png" width="57" height="49" class="hides" />
							<img src="../Images/联系我们.png" width="145" class="2wm" style="display:none;margin:-100px 57px 0 0" />
						</a>
					</li>
					<li>
						<a href="http://wpa.qq.com/msgrd?v=3&uin=1046863485&site=qq&menu=yes" target="_blank">
							<div class="hides" style="width:161px;display:none;" id="qq">
								<div class="hides" id="p1">
									<img src="../Images/ll04.png"/>
								</div>
								<div class="hides" id="p2"><span style="color:#FFF;font-size:13px">1046863485</span>
								</div>
							</div>
							<img src="../Images/l04.png" width="47" height="49" class="shows" />
						</a>
					</li>
					<li id="tel">
						<a href="javascript:void(0)">
							<div class="hides" style="width:161px;display:none;" id="tels">
								<div class="hides" id="Div1">
									<img src="../Images/ll05.png"/>
								</div>
								<div class="hides" id="p3"><span style="color:#FFF;font-size:12px">0551-65371998</span>
								</div>
							</div>
							<img src="../Images/l05.png" width="47" height="49" class="shows" />
						</a>
					</li>
					<li id="btn">
						<a id="top_btn">
							<div class="hides" style="width:161px;display:none">
								<img src="../Images/ll06.png" width="161" height="49" />
							</div>
							<img src="../Images/l06.png" width="47" height="49" class="shows" />
						</a>
					</li>
				</ul>
			</div>

			<script>
			    $(document).ready(function () {

			        $("#leftsead a").hover(function () {
			            if ($(this).prop("className") == "youhui") {
			                $(this).children("img.hides").show();
			            } else {
			                $(this).children("div.hides").show();
			                $(this).children("img.shows").hide();
			                $(this).children("div.hides").animate({
			                    marginRight: '0px'
			                }, '0');
			            }
			        }, function () {
			            if ($(this).prop("className") == "youhui") {
			                $(this).children("img.hides").hide();
			            } else {
			                $(this).children("div.hides").animate({
			                    marginRight: '-163px'
			                }, 0, function () {
			                    $(this).hide();
			                    $(this).next("img.shows").show();
			                });
			            }
			        });

			        $("#top_btn").click(function () {
			            if (scroll == "off") return;
			            $("html,body").animate({
			                scrollTop: 0
			            }, 600);
			        });

			        //右侧导航 - 二维码
			        $(".youhui").mouseover(function () {
			            $(this).children(".2wm").show();
			        })
			        $(".youhui").mouseout(function () {
			            $(this).children(".2wm").hide();
			        });


			    });
			</script>
			<!-- 代码结束 -->

		</div>
    </form>
</body>
</html>
