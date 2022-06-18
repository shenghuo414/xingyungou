<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LuckyPurchase.Pages.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>2元幸运购</title>
        <link rel="icon" href="../Images/Logo.png" />
     <!-- Bootstrap core CSS -->
        <link href="../Css/bootstrap.min.css" rel="stylesheet"/>
        <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Custom styles for this template -->
        <link href="../Css/style.css" rel="stylesheet"/>
        <link href="../fonts/antonio-exotic/stylesheet.css"  rel="stylesheet"/>
        <link href="../Css/lightbox.min.css" rel="stylesheet"/>
        <link href="../Css/responsive.css" rel="stylesheet"/>
        <link href="../Css/owl.carousel.css" rel="stylesheet" type="text/css"/>
        <script src="../Js/jquery.min.js"  type="text/javascript"></script>
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
                                	<li>
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">登录</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">注册</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;
                                       <%-- <a href="Login.aspx"></a>
                                        <a href="registered.aspx"></a>--%>
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
                                <div style="margin-top:-25px;margin-left:20px">                                   
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
                                            <li><a  data-hover="首页" class="active"><span>首页</span></a></li>
                                            <li><a data-hover="所有商品"  href="abount.aspx"><span>所有商品</span></a></li>
                                            <li><a data-hover="幸运揭晓"  href="Luck.aspx"><span>幸运揭晓</span></a></li>
                                            <li><a data-hover="新手指南" href="NewbieGuide.aspx"><span>新手指南</span></a></li>
                                            <li><a data-hover="购物车"  href="ShoppingCart.aspx"><span>购物车</span></a></li>                                            
                                            <li><a data-hover="联系我们" href="contact.aspx"><span>联系我们</span></a></li>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                            <div class="col-md-2  col-sm-4 col-xs-12 hidden-sm">
                              <%--   <%if (Session["name"] == null)
                                   {
                                       this.Label1.Text = "个人中心";
                                   }
                                   else
                                   {
                                       this.Label1.Text = Session["name"].ToString();
                                   } %>--%>
                              <%-- 传姓名到个人主页的资料--%>
                                <%--<% Session["ziliao"]=this.Label1.Text.Trim() ; %>--%>
                                <div class="text-right">
                                    <button type="button" class="book-now-btn">
                                        <a href="Center.aspx">
                                            <asp:Label ID="Label1" runat="server" Text="个人中心"></asp:Label>
                                        </a>
                                    </button>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </header>


            <!--end-->
            <div id="myCarousel1" class="carousel slide" data-ride="carousel"> 
                <!-- Indicators -->

                <ol class="carousel-indicators">
                    <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel1" data-slide-to="1"></li>
                    <li data-target="#myCarousel1" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active"> <img src="../Images/zy1.png" style="width:100%; height: 500px" alt="First slide"/>
                        <div class="carousel-caption">
                            <!--<h1>vacayhome<br> spa & Resort</h1>-->
                        </div>
                    </div>
                    <div class="item"> <img src="../Images/pp.PNG" style="width:100%; height: 500px" alt="Second slide"/>
                        <div class="carousel-caption">
                            <!--<h1>vacayhome<br> spa & Resort</h1>-->
                        </div>
                    </div>
                    <div class="item"> <img src="../Images/轮播.jpg" style="width:100%; height: 500px" alt="Third slide"/>
                        <div class="carousel-caption">
                            <!--<h1>vacayhome<br> spa & Resort</h1>-->
                        </div>
                    </div>

                </div>
                <a class="left carousel-control" href="#myCarousel1" data-slide="prev"> <img src="../Images/icons/left-arrow.png"  onmouseover="this.src = '../Images/icons/left-arrow-hover.png'" onmouseout="this.src = '../Images/icons/left-arrow.png'" alt="left"/></a>
                <a class="right carousel-control" href="#myCarousel1" data-slide="next"><img src="../Images/icons/right-arrow.png" onmouseover="this.src = '../Images/icons/right-arrow-hover.png'" onmouseout="this.src = '../Images/icons/right-arrow.png'" alt="left"/></a>

            </div>
            <div class="clearfix"></div>

            <!--service block--->
            

            <!--gallery block--->
            <section class="gallery-block gallery-front">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="../Images/华为转跳.jpg"/>
                            <%--    <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href="../Images/华为转跳.jpg" data-lightbox="example-1"><i class="fa fa-search" aria-hidden="true"></i></a>
                                    <p><a href="商品详情页/huawei.aspx">&nbsp;&nbsp;华为P50</a></p>                                
                                </div>--%>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="../Images/iphone转跳.jpg"/>
                               <%-- <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href="images/iphone转跳.jpg" data-lightbox="example-1"><i class="fa fa-search" aria-hidden="true"></i></a>
                                    <p><a href="商品详情页/IPhone.aspx">&nbsp;&nbsp;iPhone13PRO MAX</a></p>
                                </div>--%>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="../Images/摩托罗拉转跳.jpg"/>
                               <%-- <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href="images/摩托罗拉转跳.jpg" data-lightbox="example-1"><i class="fa fa-search" aria-hidden="true"></i></a>
                                    <p><a href="商品详情页/moto.aspx">&nbsp;&nbsp;摩托罗拉</a></p>
                                </div>--%>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="../Images/小米12转跳.jpg"/>
                               <%-- <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href="images/小米12转跳.jpg" data-lightbox="example-1"><i class="fa fa-search" aria-hidden="true"></i></a>
                                    <p><a href="商品详情页/xiaomi.aspx">&nbsp;&nbsp;小米12</a></p>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!--offer block-->
            <section <%--style="background-image:url(../Images/inner-banner.png);height:300px;margin-top:80px;"--%> class="vacation-offer-block">
                <div class="vacation-offer-bgbanner">
                    <div  class="container">
                        <div class="row">
                            <div class="col-md-5 col-sm-6 col-xs-12">
                                <div class="vacation-offer-details">
                                    <h1>准时关注18：00</h1>
                                    <h4>那个幸运儿会是你吗？敬请期待</h4>
                                    <asp:LinkButton ID="LinkButton3" class="btn btn-default" runat="server" OnClick="LinkButton3_Click">即将揭晓</asp:LinkButton>
                                    <%--<button type="button" class="btn btn-default"></button>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--End-->
            

            <!----resort-overview--->
            <section class="resort-overview-block">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-12 col-xs-12 remove-padd-right">
                            <div class="side-A">
                                <div class="product-thumb">
                                    <div class="image">
                                        <a><img src="../Images/yijia.png" class="img-responsive" alt="image"/></a>
                                    </div>
                                </div>
                            </div>
                            <div class="side-B">
                                <div class="product-desc-side">
                                    <h3><a>摩托罗拉moto</a></h3>
                                    <p>摩托罗拉moto edge S30冠军版 骁龙888+ 1亿像素 144Hz电竞屏 5000mAh大电池 5G手机 12GB+512GB 魅影黑，2元参与，满3599人开奖！</p>
                                    <div class="links"><a href="../商品详情页/moto.aspx">查看详情</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="col-md-6 col-sm-12 col-xs-12 remove-padd-left">
                            <div class="side-A">
                                <div class="product-thumb">
                                    <div class="image">
                                        <a><img alt="image" class="img-responsive" src="../Images/IPhone.jpg"/></a>
                                    </div>
                                </div>
                            </div>
                            <div class="side-B">
                                <div class="product-desc-side">
                                    <h3><a>苹果13 Pro Max</a></h3>
                                    <p>苹果13 Pro Max Apple iPhone 13 Pro Max 国行二手5G手机 准新 远峰蓝色 256G全网通，2元参与，满6000人次开奖！</p>
                                    <div class="links"><a href="../商品详情页/IPhone.aspx">查看详情</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="col-md-6 col-sm-12 col-xs-12 remove-padd-right">
                            <div class="side-A">
                                <div class="product-desc-side">
                                    <<h3><a>小米12 </a></h3>
                                    <p>小米12 骁龙8 Gen1 黄金手感 6.28英寸视感屏 120Hz高刷 5000万疾速影像 67W快充 8GB+256GB 黑色 5G手机，满2698人次开奖！</p>
                                    <div class="links"><a href="../商品详情页/xiaomi.aspx">查看详情</a></div>
                                </div>
                            </div>

                            <div class="side-B">
                                <div class="product-thumb">
                                    <div class="image txt-rgt">
                                        <a class="arrow-left"><img src="../Images/xiaomi主页.jpg" class="img-responsive" alt="imaga"/></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="col-md-6 col-sm-12 col-xs-12 remove-padd-left">
                            <div class="side-A">
                                <div class="product-desc-side">
                                	<h3><a>HUAWEI P50</a></h3>
                                    <p>HUAWEI P50 原色双影像单元 搭载HarmonyOS 2 万象双环设计 支持66W超级快充 8GB+128GB曜金黑 华为手机,满2999人次开奖！</p>
                                    <div class="links"><a href="../商品详情页/huawei.aspx">查看详情</a></div>
                                    
                                </div>
                            </div>

                            <div class="side-B">
                                <div class="product-thumb txt-rgt">
                                    <div class="image">
                                        <a class="arrow-left"><img src="../Images/huawei主页.jpg" class="img-responsive" alt="imaga"/></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>

                    </div>
                </div>
            </section>

            <!-----blog slider----->
            <!--blog trainer block-->
            

            <!---blog block--->
            <section class="blog-block">
                <div class="container">
                    <div class="row offspace-45">
                        <div class="view-set-block">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="event-blog-image">
                                    <img alt="image" class="img-responsive" src="../Images/苹果mac.png"/>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12 side-in-image">
                                <div class="event-blog-details">
                                    <h4><a href="../商品详情页/苹果电脑.aspx">Apple MacBook Pro</a></h4>
                                    <h3>原价￥14999.00，现在2元拥有！</h3>
                                    <p>显示屏： 14.2英寸 视网膜 XDR显示屏；初始分辨率 3024×1964，10亿色彩，P3广色域</p>
                                    <p>处理器：14核图形处理器，共享内存容量</p>
                                    <p>存储：	512GB固态硬盘</p>
                                    <p>内存:16GB,插槽数量2xSO-DIMM，最大内存容量64GB</p>
                                    <p>键盘和触控板:78 个 (ANSI) 或 79 个 (ISO) 独立 LED 背光按键，包括 12 个功能键和 4 个方向键,环境光传感器,力度触控板可实现精准光标控制和压力感应功能；支持用力长按、加速控制、压力感应绘图和多点触控手势</p>
                                    <a class="btn btn-default" href="../商品详情页/苹果电脑.aspx">即刻拥有</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row offspace-45">
                        <div class="view-set-block">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="event-blog-image">
                                    <img alt="image" class="img-responsive" src="../Images/外星人.png"/>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12 side-in-image">
                                <div class="event-blog-details">
                                    <h4><a href="../商品详情页/外星人.aspx">外星人（alienware） X17R2</a></h4>
                                    <h3>原价￥54999.00，现在2元拥有！</h3>
                                    <p>电脑机身是镁铝材质、配有蜂巢形结构散热和INFINITE环形灯带</p>
                                    <p>显示屏：17.3英寸4K UHD 120Hz屏（3840*2160分辨率、4ms响应、500nits、99%DCI-P3色域、G-SYNC）</p>
                                    <p>处理器：第12代英特尔酷睿处理器,NVIDIA GeForce RTX3080Ti（16GB显存）</p>
                                    <p>存储：固态硬盘可选512GB和1TB两种（PCIe NVMe M.2SSD）</p>
                                    <p>内存:32GB 2x16GB DDR5 4800Mhz,</p>
                                    
                                    <a class="btn btn-default" href="../商品详情页/外星人.aspx">即刻拥有</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="blog-block-slider">
                <div class="blog-block-slider-fix-image">
                    <div id="myCarousel2" class="carousel slide" data-ride="carousel">
                        <div class="container">
                            <!-- Wrapper for slides -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel2" data-slide-to="1"></li>
                                <li data-target="#myCarousel2" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <div class="blog-box">
                                        <p>在未来的大数据时代，我们必将强强联手，共创明天！</p>
                                    </div>
                                    <div class="blog-view-box">
                                        <div class="media">
                                            <div class="media-left">
                                                <img src="../Images/my1.png" class="media-object" width="200" height="200"/>
                                            </div>
                                            <div class="media-body">
                                                <h3 class="media-heading blog-title">马云</h3>
                                                <h5 class="blog-rev">阿里巴巴集团创始人</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="blog-box">
                                        <p>这是一个潮气蓬勃的网站，在未来市场有很大潜力，我相信未来一定是属于你们的</p>
                                    </div>
                                    <div class="blog-view-box">
                                        <div class="media">
                                            <div class="media-left">
                                                <img src="../Images/wsc1.png" class="media-object" width="200" height="200"/>
                                            </div>
                                            <div class="media-body">
                                                <h3 class="media-heading blog-title">王思聪</h3>
                                                <h5 class="blog-rev">北京普思投资董事长、万达集团董事</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="blog-box">
                                        <p>你们做的这么优秀，面临着俩个选择，一是被我收购，二是被我模仿</p>
                                    </div>
                                    <div class="blog-view-box">
                                        <div class="media">
                                            <div class="media-left">
                                                <img src="../Images/mht1.png" class="media-object" width="200" height="200" runat="server"/>
                                            </div>
                                            <div class="media-body">
                                                <h3 class="media-heading blog-title">马化腾</h3>
                                                <h5 class="blog-rev">腾讯公司董事会主席兼首席执行官</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </section>

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

                    <div  class="copyright">
                        &copy; 2022 All right reserved. Designed by <a href="https://www.gxjsxy.cn/" target="_blank">广西建院.</a> -  More Templates <a href="https://www.gxjsxy.cn/" target="_blank" title="建院">发财</a> - Collect from <a href="https://www.gxjsxy.cn/" title="建院" target="_blank">两元购</a>
                    </div>
                </div>
            </footer>

            <!--back to top--->
            <a style="display: none;" href="javascript:void(0);" class="scrollTop back-to-top" id="back-to-top">
                <span><i aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span>
                <span>Top</span>
            </a>
        </div>
    </form>
</body>
</html>
