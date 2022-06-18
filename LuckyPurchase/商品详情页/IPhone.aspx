<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IPhone.aspx.cs" Inherits="LuckyPurchase.商品详情页.IPhone" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="icon" href="../Images/Logo.png"/>
    <title>首页</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet"/>
    <link href="../fonts/antonio-exotic/stylesheet.css" rel="stylesheet"/>
    <link href="../css/lightbox.min.css" rel="stylesheet" />
    <link href="../css/owl.carousel.css" rel="stylesheet" type="text/css" />
    <link href="css/normalize.css" rel="stylesheet" type="text/css" />
    <script src="../js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="../js/lightbox-plus-jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="../js/custom.js" type="text/javascript" charset="utf-8"></script>
    <script src="../js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="../js/instafeed.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/jquery-1.9.1.min.js"type="text/javascript" ></script>
    <script src="js/common.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var showproduct = {
                "boxid": "showbox",
                "sumid": "showsum",
                "boxw": 400,//宽度,该版本中请把宽高填写成一样
                "boxh": 400,//高度,该版本中请把宽高填写成一样
                "sumw": 60,//列表每个宽度,该版本中请把宽高填写成一样
                "sumh": 60,//列表每个高度,该版本中请把宽高填写成一样
                "sumi": 7,//列表间隔
                "sums": 5,//列表显示个数
                "sumsel": "sel",
                "sumborder": 1,//列表边框，没有边框填写0，边框在css中修改
                "lastid": "showlast",
                "nextid": "shownext"
            };//参数定义	  
            $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>

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
                                	<li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">登录</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">注册</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <a href="../Pages/Backstage.aspx">后台管理</a>
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
                                    <a href="../Pages/index.aspx"><img src="../images/Logo.png" width="150" height="80"/></a>
                                    
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
                                             <li><a  data-hover="首页" href="../Pages/index.aspx"><span>首页</span></a></li>
                                            <li><a data-hover="所有商品"  href="../Pages/abount.aspx"><span>所有商品</span></a></li>
                                            <li><a data-hover="幸运揭晓"  href="../Pages/Luck.aspx"><span>幸运揭晓</span></a></li>
                                            <li><a data-hover="新手指南" href="../Pages/NewbieGuide.aspx"><span>新手指南</span></a></li>
                                            <li><a data-hover="购物车"  href="../Pages/ShoppingCart.aspx"><span>购物车</span></a></li>
                                            <li><a data-hover="联系我们" href="../Pages/contact.aspx"><span>联系我们</span></a></li>
                                        </ul>

                                    </div>
                                </nav>
                            </div>
                            <div class="col-md-2  col-sm-4 col-xs-12 hidden-sm">
                                <div class="text-right">
                                    <button type="button" class="book-now-btn">
                                        <a style="text-decoration:none" href="../Pages/Center.aspx">
                                            <asp:Label ID="Label1" runat="server" Text="个人中心"></asp:Label>
                                        </a>
                                    </button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

	 <div id="xiangqimng">
		<div id="bj">
			<p style="margin-left:1px;"><a href="../Pages/abount.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所有商品</a>>>当前商品</p>
		</div>
		<div class="showall">
	                <!--left -->
	                <div class="showbot">
                    <div id="showbox">
                        <img src="../images/苹果5.jpg" width="400" height="400" />
                        <img src="../images/苹果2.jpg" width="400" height="400" />
                        <img src="../images/苹果3.jpg" width="400" height="400" />
                        <img src="../images/苹果4.jpg" width="400" height="400" />
                        
                        
                    </div><!--展示图片盒子-->
                        <div id="showsum">
                        	<!--展示图片里边-->
                        </div>
                        <p class="showpage">
                            <a href="javascript:void(0);" id="showlast"> < </a>
                            <a href="javascript:void(0);" id="shownext"> > </a>
                        </p>
                        </div>
                        <!--conet -->
                        <div class="tb-property">
                        	<div class="tr-nobdr">
                        		<h4>苹果13 Pro Max Apple iPhone 13 Pro Max 国行二手5G手机 准新 远峰蓝色 256G全网通</h4>
                        	</div>
                        		<div class="txt">
                        			<span class="nowprice">￥<a href="#">2.00</a>&nbsp;&nbsp;<del class="yuanjia">￥8699</del></span>
                        			<div class="cumulative">
                        				<span class="number ty1">累计售出<br /><em id="add_sell_num_363">270</em></span>
                        				<span class="number tyu">累计评价<br /><em id="Em1">80</em></span>
                        			</div>
                        		</div>
                        		
                        	<div class="txt-h">
                        		<div class="Progress-bar">
												<p title="已完成98.85%"><span style="width:210.54230769231px;"></span></p>
												<ul class="Pro-bar-li">
													<li class="P-bar01"><em>46177</em>已参与人次</li>
													<li class="P-bar02"><em>86299</em>总需人次</li>
													<li class="P-bar03"><em>40522</em>剩余人次</li>
												</ul>
											</div>
                        		<span class="tex-o">颜色:</span>
                        		<ul class="glist" id="glist" data-monitor="goodsdetails_fenlei_click">
                        			<li><a title="红色36g" href="#">蓝色</a></li>
                        			<li><a title="蓝色16g" href="#">黑色</a></li>
                        		<!--<li><a title="红色36g" href="">红色36g</a></li>
                        			<li><a title="蓝色16g" href="">红色36g</a></li>-->
                        		</ul>
                        	</div>
                        	<script>
                        	    $(document).ready(function () {
                        	        //����ı������
                        	        var t = $("#text_box");
                        	        //��ʼ������Ϊ1,��ʧЧ��
                        	        $('#min').attr('disabled', true);
                        	        //�������Ӳ���
                        	        $("#add").click(function () {
                        	            t.val(parseInt(t.val()) + 1)
                        	            if (parseInt(t.val()) != 1) {
                        	                $('#min').attr('disabled', false);
                        	            }

                        	        })
                        	        //�������ٲ���
                        	        $("#min").click(function () {
                        	            t.val(parseInt(t.val()) - 1);
                        	            if (parseInt(t.val()) == 1) {
                        	                $('#min').attr('disabled', true);
                        	            }

                        	        })
                        	    });
                        	</script>  
                        	<div class="gcIpt">
                        		<span class="guT">数量:</span>
                        		<input id="min" name="" type="button" value="-" />  
                        		<input id="text_box" name="" type="text" value="1"style="width:30px; text-align: center; color: #000000;"/>  
                        		<input id="add" name="" type="button" value="+" />
                        		
                        	</div>
                        	<div <%--class="nobdr-btns"--%>>
                                <div style="width:200px;height:35px ;background-color:orangered;margin-left:64px">
                                    <asp:LinkButton ID="LinkButton3"  style="margin-left:50px;line-height:35px;color:white;" runat="server"><img src="images/shop.png" width="25" height="25"/>加入购物车</asp:LinkButton>
                                </div>
                                 <div style="width:200px;height:35px ;background-color:orangered;margin-left:266px;margin-top:-35px">
                                    <asp:LinkButton ID="LinkButton4"  style="margin-left:50px;line-height:35px;color:white;" runat="server"><img src="images/ht.png" width="25" height="25"/>立即购买</asp:LinkButton>
                                </div>
                        	</div>
                      
                        </div>
                        <!--right -->
                       
                    </div> 
	</div>
                
<!-- 推荐搭配 -->                
                
<!-- 商品介紹 -->                
               
<!-- right -->
     <script>
                	    var detail = document.querySelector('.detail');
                	    var origOffsetY = detail.offsetTop;
                	    function onScroll(e) {
                	        window.scrollY >= origOffsetY ? detail.classList.add('sticky') :
                            detail.classList.remove('sticky');
                	    }
                	    document.addEventListener('scroll', onScroll);
</script>

     <div id="liebiao">
	<div class="detail">
                		<div class="active_tab" id="outer">
													<ul class="act_title_left" id="tab">
														<li class="act_active">
															<a href="#">规格参数</a>
														</li>
														<li>
															<a href="#">商品介绍</a>
														</li>
														
														<li>
															<a href="#">售后保障</a>
														</li>
													</ul>
													
													<div class="clear"></div>
												</div>
												<div id="content" class="active_list"> 
													<!--0-->
													<div id="ui-a" class="ui-a">
														
												        <ul style="display:block;">
												        <li>商品名称：苹果13 Pro Max</li>
												        <li>商品型号： 苹果13 Pro Max</li>
												        <li>品牌:苹果</li>
												        <li>上架时间：2022-5-5</li>
												        <li>库存： 569 </li>
												        
												        </ul>
												   </div>
												   <!--商品规格-->
												    	<div id="bit" class="bit">
												        <ul style="display:none;">
												            <li><img src="../images/iphone1.jpg"/></li>
												            <li><img src="../images/iphone2.jpg"/></li>
												            <li><img src="../images/iphone3.jpg"/></li>
												            <li><img src="../images/iphone4.jpg"/></li>
												            
												                
												       </ul>
												       </div>
												       
												 <!--商品评价-->      
												   
												    <div id="ui-c" class="ui-c">
												          <ul style="display:none;">
												         	<img src="../images/iphone保障.jpg" width="943"/>
												         </ul>
												    </div>
												 <!--售后保障-->
												
												</div>
			<script>
				$(function () {
				    window.onload = function () {
				        var $li = $('#tab li');
				        var $ul = $('#content ul');

				        $li.mouseover(function () {
				            var $this = $(this);
				            var $t = $this.index();
				            $li.removeClass();
				            $this.addClass('act_active');
				            $ul.css('display', 'none');
				            $ul.eq($t).css('display', 'block');
				        })
				    }
				});
			</script>
           </div>
        </div>
     </div> 
    </form>
</body>
</html>
