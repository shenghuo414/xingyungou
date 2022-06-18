<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="LuckyPurchase.Pages.NewbieGuide" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="icon" href="../../Images/Logo.png" />
    <title>购物车</title>
    <link rel="stylesheet" type="text/css" href="../Css/lrtk.css" />
    <link rel="stylesheet" href="../Css/carts.css"/>
	<link rel="stylesheet" href="../Css/reset.css"/>
	<script src="../Js/carts.js" type="text/javascript"></script>
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
	<script src="../Js/jquery.imagesloaded.js"></script>
	<script src="../Js/masonry.pkgd.min.js"></script>
	<script src="../Js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
	<script src="../Js/instafeed.min.js" type="text/javascript"></script>
	<script src="../Js/custom.js" type="text/javascript"></script>
	<style>
		.grid {
            background: rgba(0,0,0,0);
        }
        /* clear fix */
        .grid:after {
            content: '';
            display: block;
            clear: both;
        }
        /* ---- .grid-item ---- */
        .grid-sizer,
        .grid-item {
            width: 33.34%;
        }
        .grid-item {
            float: left;
        }
        .grid-item img {
            display: block;
            max-width: 100%;
        }
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 50%;
            left: -85px;
            top: 175px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 50%;
            left: -41px;
            top: 73px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="page">
			<!---header top---->
			<div class="top-header">
                <div class="container">
                    <div class="row">
                        <div class="auto-style2">
                            <!--                            <a href="#"> </a>
                                                        <div class="info-block"><i class="fa fa-map"></i>701 Old York Drive Richmond USA.</div>-->
                        </div>
                        <div class="auto-style1">
                            <div class="social-grid">
                                <ul class="list-unstyled text-right">
                                	<li>
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">登录</asp:LinkButton>&nbsp;&nbsp;-&nbsp;&nbsp;
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
                                            <li><a  data-hover="首页"href="index.aspx"><span>首页</span></a></li>
                                            <li><a data-hover="所有商品"  href="abount.aspx"><span>所有商品</span></a></li>
                                            <li><a data-hover="幸运揭晓"  href="Luck.aspx"><span>幸运揭晓</span></a></li>
                                            <li><a data-hover="新手指南" href="NewbieGuide.aspx"><span>新手指南</span></a></li>
                                            <li><a data-hover="购物车" class="active"><span>购物车</span></a></li>
                                            <li><a data-hover="联系我们" href="contact.aspx"><span>联系我们</span></a></li>
                                        </ul>

                                    </div>
                                </nav>
                            </div>
                            <div class="col-md-2  col-sm-4 col-xs-12 hidden-sm">
                                <div class="text-right">
                                    <button type="button" class="book-now-btn">
                                        <a  style="text-decoration:none;color:black;"href="Center.aspx">
                                            <asp:Label ID="Label1" runat="server" Text="个人中心"></asp:Label>
                                        </a></button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

			<!--end-->
			<!-- 中间部分 -->

			<!---footer--->
			<section class="cartMain">
				<div >
                    <table style="width: 100%;text-align:center;">
                        <tr style=" font-size:2em;background-color:aquamarine;height:50px;line-height:50px;">
                            <th style="text-align:center">商品名称</th>
                            <th style="text-align:center">商品图</th>
                            <th style="text-align:center">商品类型</th>
                            <th style="text-align:center">数量</th>
                            <th style="text-align:center">单价</th>
                            <th style="text-align:center">操作</th>
                        </tr>
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <ItemTemplate>
                                <tr style="font-size:1.5em;background-color:whitesmoke;line-height:80px">
                                    <td><%#Eval("Good.GoodsName") %></td>
                                    <td><img style="margin-top:40px;" width="40" height="40" src='../Images/<%#Eval("Good.Src") %>' alt=""/></td>
                                    <td><%#Eval("Good.Type") %></td>
                                    <td>
                                        <div class="amount_box">
          <%--                                  <asp:LinkButton ID="LinkButton3" style="text-decoration:none" runat="server">-</asp:LinkButton>--%>	
                                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("CarCount") %>'></asp:Label>
                       <%--                     <asp:LinkButton ID="LinkButton4" style="text-decoration:none" runat="server">+</asp:LinkButton>--%>
								        </div>
                                    </td>
                                    <td><%#Eval("Good.Price","{0:c}") %></td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton5" style="text-decoration:none" OnClientClick="return confirm('确定要移除此商品嘛？')" CommandArgument='<%#Eval("CartID") %>' runat="server">移除商品</asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
				</div>


				<div class="bar-wrapper">
					<div class="bar-right">					
						<div class="totalMoney" style="font-size:2em;">共计:<asp:Label ID="Label2" runat="server" Text="￥0.00" style="color:red;" ></asp:Label></div>
						<div class="calBtn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" style="width:100px;height:50px;border:none;background-color:orangered;font-size:1.4em;color:white;" runat="server" Text="结&nbsp;算" OnClick="Button1_Click" /></div>
					</div>
				</div>
			</section>
			<section class="model_bg"></section>
			<section class="my_model">
				<p class="title">删除宝贝<span class="closeModel">X</span></p>
				<p>您确认要删除该宝贝吗？</p>
				<div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
			</section>

			<!--                <div class="container">
                    <div class="rowo">
                        <div class="col-md-3 col-sm-6 col-xs-12 width-set-50">
                            <div class="footer-details">
                                <h4>联系我们</h4>
                                <ul class="list-unstyled footer-contact-list">
                                    <li>
                                        <i class="fa fa-map-marker fa-lg"></i>
                                        <p>湖南省长沙市ZYL一元幸运购有限公司</p>
                                    </li>
                                    <li>
                                        <i class="fa fa-phone fa-lg"></i>
                                        <p><a href="tel:+1-202-555-0100">18888888888</a></p>
                                    </li>
                                    <li>
                                        <i class="fa fa-envelope-o fa-lg"></i>
                                        <p><a href="mailto:demo@info.com"> 1278338940@qq.com</a></p>
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
                                    <li><a href="about.html">所有商品</a></li>
                                    <li><a href="rooms.html">幸运揭晓</a></li>
                                    <li><a href="gallery.html">新手指南</a></li>
                                    <li><a href="#">购物车</a></li>
                                    <li> <a href="news.html">购物历史</a></li>
                                    <li> <a href="contact.html">联系我们</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                        	<div id="dibu">
                        		<div class="footer-details">
                                <h4>一个专注于你的幸运的网站</h4>
                                <div class="row">
                                	<a href="index.html"><img src="../Images/logobai.png" width="300" height="300"></a>
                                    <div class="instagram-images">
                                        <div id="instafeed"></div>
                                    </div>
                                </div>
                            </div>
                        	</div>
                            
                        </div>
                    </div>

                    <div class="copyright">
                        &copy; 2018 All right reserved. Designed by <a href="#" target="_blank">ThemeVault.</a> -  More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">ZYL</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">一元云购</a>
                    </div>

                </div>
           
 -->
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
    <script>
        var grid = document.querySelector('.grid');

        var msnry = new Masonry(grid, {
            itemSelector: '.grid-item',
            columnWidth: '.grid-sizer',
            percentPosition: true
        });

        imagesLoaded(grid).on('progress', function () {
            // layout Masonry after each image loads
            msnry.layout();
        });
		</script>
    <script src="../Js/jquery.min.js"></script>
	<script src="../Jss/carts.js"></script>
	<link rel="stylesheet" href="../Css/reset.css"/>
	<link rel="stylesheet" href="../Css/carts.css"/>
</body>
</html>
