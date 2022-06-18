<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="abount.aspx.cs" Inherits="LuckyPurchase.Pages.abount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>所有商品</title>
    	<link rel="stylesheet" type="text/css" href="../Css/lrtk.css" />
		<link rel="icon" href="../Images/Logo.png" />
		<link rel="stylesheet" type="text/css" href="../Css/shangpin.css" />
    <!-- Bootstrap core CSS -->
		<link href="../Css/bootstrap.min.css" rel="stylesheet" />
		<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<!-- Custom styles for this template -->
		<link href="../Css/style.css" rel="stylesheet"/>
		<link href=".../fonts/antonio-exotic/stylesheet.css" rel="stylesheet"/>
		<link rel="stylesheet" href="../Css/lightbox.min.css"/>
		<link href="../Css/responsive.css" rel="stylesheet"/>
		<script src="../Js/jquery.min.js" type="text/javascript"></script>
		<script src="../Js/bootstrap.min.js" type="text/javascript"></script>
		<script src="../Js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
		<script src="../Js/instafeed.min.js" type="text/javascript"></script>
		<script src="../Js/custom.js" type="text/javascript"></script>
</head>
<body>
<form runat="server" id="from1">
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
                                    <!--<a href="index.html"><img src="images/logo.png" alt="logo"></a>-->
                                    <a href="index.aspx"><img src="../Images/Logo.png" width="150" height="80"/></a>
                                </div>                       
                            </div>
                            <div class="col-sm-6 visible-sm">
                                <div class="text-right"><button type="button" class="book-now-btn">Book Now</button></div>
                            </div>
                            <div class="col-md-8 col-sm-12 col-xs-12 remove-padd">
                                <%--<nav class="navbar navbar-default">99--%>
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
                                            <li><a data-hover="所有商品" class="active"><span>所有商品</span></a></li>
                                            <li><a data-hover="幸运揭晓"  href="Luck.aspx"><span>幸运揭晓</span></a></li>
                                            <li><a data-hover="新手指南" href="NewbieGuide.aspx"><span>新手指南</span></a></li>
                                            <li><a data-hover="购物车"  href="ShoppingCart.aspx"><span>购物车</span></a></li>                                       
                                            <li><a data-hover="联系我们" href="contact.aspx"><span>联系我们</span></a></li>
                                            <li style="margin-left:40px">
                                                <asp:Label ID="Label2" runat="server" Text="余额："></asp:Label>
                                                <asp:Label ID="Label3"  runat="server" Text=""></asp:Label>
                                                <asp:TextBox ID="TextBox2" style="width:50px" runat="server"></asp:TextBox>
                                                <asp:Button ID="Button1" runat="server" Text="充值" OnClick="Button1_Click" />
                                            </li>
                                        </ul>

                                    </div>
                                </nav>
                            </div>
                            <div class="col-md-2  col-sm-4 col-xs-12 hidden-sm">
                                <div class="text-right">
                                    <button type="button" class="book-now-btn">
                                         <a href="Center.aspx">
                                            <asp:Label ID="Label1" runat="server" Text="个人中心"></asp:Label>
                                        </a></button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

			<!--end-->
			<!--            <section class="image-head-wrapper" style="background-image: url('images/banner3.jpg');">
                <div class="inner-wrapper">
                    <h1>About us</h1>
                </div>
            </section> -->
			<!-- 搜索框 -->
			<script type="text/javascript" src="../Js/jquery-1.7.2.js"></script>
			<script type="text/javascript" src="../Js/zySearch.js"></script>
			<%--<div class="zySearch" id="zySearch">              
			</div>--%>
            <table style="width: 400px;border:1px solid red;margin:auto;" >
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" style="width:400px;height:30px;border:none;" placeholder="请输入关键字" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button3" style="width:100px;height:30px;border:none;background-color:crimson;font-size:1.3em;color:white;" runat="server" Text="搜&nbsp;索" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
                           
			<script type="text/javascript">
			    $("#zySearch").zySearch({
			        "width": "355",
			        "height": "33",
			        "parentClass": "pageTitle",
			        "callback": function (keyword) {
			            console.info("搜索的关键字");
			            console.info(keyword);
			        }
			    });
			</script>
			<!-- 商品分类栏 -->
			<!-- 		<div class="Current_nav"><a href="http://www.szyfd.com.cn/index.php">首页</a> &gt; 所有分类</div> -->
			<div style="margin-top:50px" id="current" class="list_Curtit">
				<h1 class="fl">所有分类</h1>
				<span id="spTotalCount">(共<em class="orange">18</em>件相关商品)</span>
			</div>
			<div class="list_class">
				<dl>
					<dt>分类</dt>
					<dd id="ddBrandList">
						<ul>
							<li><asp:LinkButton class="ClassCur" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">全部</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">手机数码</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">电脑办公</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">家具电器</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">食品饮料</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">钟表首饰</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click">户外运动</asp:LinkButton></li>
						</ul>
					</dd>
				</dl>
			</div>
            <%-- 商品函数 --%>

			<div id="shangpin" runat="server">
				<div class="listContent" runat="server" id="shangpin1">
					<ul class="item" id="ulGoodsList" runat="server">
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <ItemTemplate>
                                <li class="goods-iten" runat="server">
							<div class="pic" runat="server">
								<a href="#" target="_blank" title='../Images/<%#Eval("Src") %>'>
									<i class="goods_tj"></i>
									<img style="width:200px;height:200px;" alt="Huawei/华为 nova 3i手机官方旗舰店双4G全网通手机mate20Pro降价P20畅想9plus" src='../Images/<%#Eval("Src") %>'/>
								</a>
								<p name="buyCount" style="display:none;"></p>
							</div>
							<p class="name">
								<a href="#" target="_blank" title="Huawei/华为 nova 3i手机官方旗舰店双4G全网通手机mate20Pro降价P20畅想9plus">
									<%#Eval("GoodsName") %>
							</p>
							<p class="money">价值：<span class="rmbgray"><%#Eval("Price","{0:c}") %></span></p>
						<%--	<div class="Progress-bar">
								<p title="已完成98.85%"><span style="width:200.54230769231px;"></span></p>
								<ul class="Pro-bar-li">
									<li class="P-bar01"><em>1028</em>已参与人次</li>
									<li class="P-bar02"><em>1040</em>总需人次</li>
									<li class="P-bar03"><em>12</em>剩余人次</li>
								</ul>
							</div>--%>
							<div class="gl_buybtn" runat="server">
								<div class="go_buy" runat="server">
                                    <asp:LinkButton ID="LinkButton12" style="border:1px solid black;width:80px;text-align:center;height:20px;line-height:20px;"  OnClientClick="return confirm('本次购买需要支付2元，确定购买嘛')" CommandArgument='<%#Eval("GoodsId") %>' CommandName="buy" runat="server">立即2元云购</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton13" style="border:1px solid black;width:80px;text-align:center;height:20px;line-height:20px;"  CommandArgument='<%#Eval("GoodsId") %>' CommandName="add" runat="server">加入购物车</asp:LinkButton>
                                <%-- <asp:Button ID="Button2" runat="server" Text="立即2元云购" /> --%>
									<%--<a href="javascript:;" title="立即云购" class="go_shopping fl"> </a>
									<a href="javascript:;" title="加入购物车" class="go_cart fr"></a>--%>
                                        <%--<asp:button id="button1" runat="server" text="加入购物车" />--%>
								</div>
							</div>

							<%--<div class="curbor_id" style="display:none;">17358</div>
							<div class="curbor_yunjiage" style="display:none;">1.00</div>
							<div class="curbor_shenyu" style="display:none;">12</div>--%>
						</li>
                            </ItemTemplate>
                        </asp:Repeater>													
					    <li>&nbsp;</li>
					</ul>
				</div>
			</div>
			<!-- 商品 -->
			

			<div class="pagesx">
                <asp:LinkButton ID="LinkButton10" style="text-decoration:none;margin-left:30px;color:black;background-color:antiquewhite;border:1px solid black;" runat="server"  OnClick="LinkButton10_Click">上一页</asp:LinkButton>
                <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton3" style="text-decoration:none;margin-left:30px;color:black;"  CommandArgument='<%#Eval("PageIndex") %>'  runat="server"><%#Eval("PageIndex") %></asp:LinkButton>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:LinkButton ID="LinkButton11" style="text-decoration:none;margin-left:30px;color:black;background-color:antiquewhite;border:1px solid black;" runat="server"  OnClick="LinkButton11_Click">下一页</asp:LinkButton>

                <%--<asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <ul id="Page_Ul">
					    <li id="Page_Total">73条</li>
					    <li id="Page_One"><a href="/index.php/goods_list?p=1">首页</a></li>
					    <li id="Page_Prev"><a href="/index.php/goods_list?p=1">上一页</a></li>
					    <li class="Page_This">1</li>
					<li class="Page_Num"><a href="/index.php/goods_list?p=2">2</a></li>
					<li class="Page_Num"><a href="/index.php/goods_list?p=3">3</a></li>
					<li class="Page_Num"><a href="/index.php/goods_list?p=4">4</a></li>
					<li id="Page_Next"><a href="/index.php/goods_list?p=2">下一页</a></li>
					<li id="Page_End"><a href="/index.php/goods_list?p=4">尾页</a></li>
				        </ul>
                    </ItemTemplate>
                </asp:Repeater>--%>
			</div>


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
			                $(this).children("div.hides").animate({ marginRight: '0px' }, '0');
			            }
			        }, function () {
			            if ($(this).prop("className") == "youhui") {
			                $(this).children("img.hides").hide();
			            } else {
			                $(this).children("div.hides").animate({ marginRight: '-163px' }, 0, function () { $(this).hide(); $(this).next("img.shows").show(); });
			            }
			        });

			        $("#top_btn").click(function () { if (scroll == "off") return; $("html,body").animate({ scrollTop: 0 }, 600); });

			        //右侧导航 - 二维码
			        $(".youhui").mouseover(function () {
			            $(this).children(".2wm").show();
			        })
			        $(".youhui").mouseout(function () {
			            $(this).children(".2wm").hide();
			        });


			    });
            </script>
		</div>

	<style type="text/css">
		/* 商品分栏css */
		.Current_nav {
			width: 1190px;
			font-size: 14px;
			color: #BBB;
			font-family: 微软雅黑;
			height: 39px;
			margin: 0px auto;
		}

		.list_Curtit {
			width: 980px;
			height: 39px;
			background: #fff;
			border: 1px solid #E4E4E4;
		}

		.list_Curtit h1 {
			font-size: 18px;
			line-height: 22px;
			color: #f44360;
			font-family: 微软雅黑, 微软雅黑;
			font-weight: bold;
			padding: 8px 10px 0 10px;
			_padding: 9px 10px 0 10px;
		}

		.fl {
			float: left;
		}

		.list_Curtit span {
			font-family: 微软雅黑, 微软雅黑;
			padding: 11px 10px 0 10px;
			_padding: 12px 10px 0 10px;
			display: block;
			color: #999;
		}

		.list_class {
			width: 980px;
			background: #fff;
			border: 1px solid #E4E4E4;
			padding-bottom: 10px;
			border-top: none;
			zoom: 1;
			position: relative;
			height: 62px;
		}

		.list_class dl {
			padding-top: 10px;
			float: left;
		}

		.list_class dt {
			float: left;
			width: 35px;
			text-align: center;
			line-height: 22px;
			color: #BBB;
		}

		.list_class dd {
			float: left;
			width: 1122px;
			overflow: hidden;
		}

		.list_class dd ul {
			float: left;
		}

		.list_class dd li {
			float: left;
			width: 130px;
			height: 24px;
			overflow: hidden;
			margin-bottom: 2px;
			margin-right: 10px;
		}

		.list_class dd a.ClassCur {
			background: #f60;
			color: #fff;
			padding: 2px 5px 2px 5px;
			white-space: nowrap;
		}

		.list_class dd a {
			line-height: 22px;
			height: 24px;
			overflow: hidden;
			padding: 2px 5px 2px 5px;
			color: #666;
			white-space: nowrap;
		}

		#current {
			margin-top:1px;
		}

		/* 页码 */
		.pagesx {
			font-size: 14px;
			color: #333;
			width: 958px;
		}

		.pagesx {
			font-size: 14px;
			color: #333;
			margin: 19px -59px 0 0;
			float: right;
		}

		#Page_Ul {
			font-size: 14px;
		}

		#Page_Ul #Page_Total {
			line-height: 26px;
			display: none;
		}

		#Page_Ul li {
			float: left;
			margin-right: 10px;
			line-height: 16px;
		}

		#Page_Ul li a {
			color: #333;
			border: 1px solid #DEDEDE;
			text-align: center;
			padding: 5px 10px;
			border-radius: 5px;
			color: #666;
			display: block;
		}

		#Page_Ul li a:hover {
			background-color: #FF6600;
			color: #FFFFFF;
		}
		
		.go_buy a.go_cart.fr:hover{
			background-color: #FF6600;
			color: #FFFFFF;
		}
		.go_buy a.go_Shopping.fl:hover{
			background-color: #FFEBC4;
			color: #FF6F0D;
		}
	</style>

	<link rel="stylesheet" href="../Css/style.css" type="text/css" />
  </form>
</body>
</html>
