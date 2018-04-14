<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <link href="/css/login-style.css" rel='stylesheet' type='text/css'/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- META -->
        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <!-- TITLE -->
        <title>E旅行 便你行</title>

        <!-- Main StyleSheet -->
        <link href="/style.css" rel="stylesheet" type="text/css" />
        <link href="/style-responsive.css" rel="stylesheet" type="text/css" media="screen" />
        <link href="/css/font-awesome.css" rel="stylesheet" type="text/css" />
        <!--<link rel="stylesheet" href="css/bootstrap.min.css">-->
        <link rel="stylesheet" href="/css/libs/animate.css">


		<!-- bxSlider CSS file -->
        <link href="/css/jquery.bxslider.css" rel="stylesheet" />


        <!-- LayerSlider stylesheet -->
        <link rel="stylesheet" href="/layerslider/css/layerslider.css" type="text/css">
        <!-- External libraries: jQuery & GreenSock -->
        <script src="/layerslider/js/jquery.js" type="text/javascript"></script>
        <script src="/layerslider/js/greensock.js" type="text/javascript"></script>
        <!-- LayerSlider script files -->
        <script src="/layerslider/js/layerslider.transitions.js" type="text/javascript"></script>
        <script src="/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>

        <script src="/js/bootstrap.min.js" type="text/javascript"></script>


		<!-- bxSlider Javascript file -->
        <script src="/js/jquery.bxslider.js"></script>
        <script>
		$(document).ready(function(){
		$('.bxslider').bxSlider({

								pager: false,
								controls: true,
								auto: true


								});
		});
		</script>



		<link rel="stylesheet" type="text/css" href="/lightbox/jquery.fancybox.css" media="screen" />
		<script src="/lightbox/jquery.fancybox.js"></script>
        <script type="text/javascript">
                $(document).ready(function() {

                    $('.fancybox').fancybox();

                });
        </script>


        <!-- GOTO TOP JQUERY -->
        <script type="text/javascript">
        $(function() {
            $(window).scroll(function() {
                if($(this).scrollTop() != 0) {
                    $('#gotop').fadeIn();
                } else {
                    $('#gotop').fadeOut();
                }
            });

            $('#gotop').click(function() {
                $('body,html').animate({scrollTop:0},800);
            });
        });
        </script>



		<!-- HEADER JQUERY -->
        <script type="text/javascript">
        $(function() {
            $(window).scroll(function() {
                if($(this).scrollTop() >= 200) {
                    $('.header').addClass("header_fix");
                } else {
                   $('.header').removeClass("header_fix");
                }
            });
        });
        </script>


        <script type="text/javascript">

		if($(window).width() <= 900){
		$(document).ready(function() {



                    $('.mobile .title').click(function() {

												$(this).next("ul").slideToggle();
												$(this).toggleClass("minus");

												});



                });

		}
        </script>

</head>

<body>



        <div class="header">
        <div class="container">

					<a class="navbar-brand" href="#myPage"><h1>E旅行</h1></a>
                    <div class="nav mobile">
                    <div class="title">Menu <span class="fa "></span></div>
                    <ul>
                    <li><a href="#faqs_part">常见问题</a></li>
                    <li><a href="#features">产品特点</a></li>
                    <li><a href="#testimonials_part">用户评价</a></li>
                    <!--<li><a href="#pricing_part">Pricing</a></li>-->
                    <li><a href="#contact_part">注册登陆</a></li>
                    <!--<li><a href="#subscribe_part">Sign Up</a></li>-->
                    </ul>
                    </div>

        </div>
        </div>




		<div class="wrapper">
        <div class="slider_main">
        <div id="full-slider-wrapper">
        <div id="layerslider" style="width:100%;height:473px;">


                                <div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
                                <img src="/images/slider/2.jpg" class="ls-bg" alt="Slide background"/>


                                <div class="ls-l videopreview" style="top:87px;left:0px;white-space: nowrap;" data-ls="offsetxin:-200;durationin:2000;offsetxout:-200;">
                                <!--<iframe src="http://player.vimeo.com/video/34134308?portrait=0&amp;color=ff9933&autoplay=1" width="443" height="290" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>-->
                                <img src="/images/player.png" alt="" />
                                </div>


                                <div class="ls-l" style="top:140px;left:638px;white-space: nowrap;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                                <h2 class="l1">E旅行，易旅行，便您行</h2>
                                </div>

                                <div class="ls-l" style="top:200px;left:583px;white-space: nowrap;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                                <h2 class="l2">精确&高效的个性化旅行推荐</h2>
                                </div>



                                <div class="ls-l" style="top:265px;left:598px;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                                <a href="#" class="button2">了解更多</a>
                                </div>


                                <div class="ls-l" style="top:265px;left:810px;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                                <a href="#" class="button1">现在开始</a>
                                </div>


                                </div><!--FIRST SLIDE-->



                                <div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
                                <img src="/images/slider/2.jpg" class="ls-bg" alt="Slide background"/>


                                <div class="ls-l videopreview" style="top:87px;left:0px;white-space: nowrap;" data-ls="offsetxin:-200;durationin:2000;offsetxout:-200;">
                                <!--<iframe src="http://player.vimeo.com/video/34134308?portrait=0&amp;color=ff9933&autoplay=1" width="443" height="290" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>-->
                                <img src="/images/player.png" alt="" />
                                </div>


                                <div class="ls-l" style="top:140px;left:638px;white-space: nowrap;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                                <h2 class="l1">E旅行，易旅行，便您行</h2>
                                </div>

                                <div class="ls-l" style="top:200px;left:583px;white-space: nowrap;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                                <h2 class="l2">精确&高效的个性化旅行推荐</h2>
                                </div>



                                <div class="ls-l" style="top:265px;left:598px;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                                <a href="#" class="button2">了解更多</a>
                                </div>


                                <div class="ls-l" style="top:265px;left:810px;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                                <a href="#" class="button1">现在开始</a>
                                </div>


                                </div><!--FIRST SLIDE-->




        </div>
        </div>
        </div>


<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>

        <div class="service_section">
        <div class="container">

        			<h2>浏览我们的服务</h2>
                    <h4>轻松几步，为您推荐完美准确的旅游路线</h4>

                    <div class="insider">

                   		<div class="column">
                        <span class="fa fa-mobile"></span>
                        <h3>大数据</h3>
                        <p>因为懂你，所以更精准</p>
                        </div>

                        <div class="column">
                        <span class="fa fa-comment-o"></span>
                        <h3>协同过滤算法</h3>
                        <p>个性化推荐目的地、住地、交通和酒店等</p>
                        </div>

                        <div class="column">
                       	<span class="fa fa-heart-o"></span>
                        <h3>图论算法</h3>
                        <p>从时间金钱出发，发现最合适的旅行路线</p>
                        </div>

                    </div>

        </div>
        </div>





        <div class="feature_section" id="features">
        <div class="container">


                        <div class="leftside">
                        <img src="/images/thumbs/北京.jpg" alt=""  class="wow bounceInLeft animated" data-wow-duration="2s" data-wow-offset="300" data-wow-delay="0.2s" />
                        </div>


                        <div class="rightside">
                        <h2>探索旅行的未来</h2>
                        <p>
                        市场上对于个性推荐的方案大都是依赖设计师来进行设计，由于较贵的价格，私人定制目前还不温不火.

                        我们利用大数据相关技术进行个性化推荐替代人工推荐，为各大旅游业巨头省下人力物力，推动整个行业的发展.
                        </p>

                        <div class="feature">
                        <span class="fa fa-life-ring"></span>
                        <div class="description">
                        <strong>极佳的表现</strong> <br />
                        精准地个性化推荐，针对不同的用户贴近喜好，真正理解用户
                        </div>
                        </div>

                        <br clear="all" />

                        <a href="#" class="button3">了解更多</a>
                        <a href="#" class="button4">现在开始</a>
                        </div>

        </div>
        </div>





        <div class="feature_section ano_feature_section">
        <div class="container">


                        <div class="leftside">
                        <h2>产品设计</h2>
                        <p> 获取到海量数据，利用Hadoop框架与其子项目对大量数据进行分析存储</p>
                        <p> 利用协同过滤算法实现目的地、住地、出行方式、酒店等的个性化推荐</p>
                        <p> 利用图论相关算法对几个目的地的路线进行规划具体游览路线进行设计</p>
                        <p> 从花费时间，金钱等角度，高效找出让用户最舒适快捷经济的旅行线路</p>

                        <div class="feature">
                        <span class="fa fa-life-ring"></span>
                        <div class="description">
                        <strong>极佳的表现</strong> <br />
                        精准地个性化推荐，针对不同的用户贴近喜好，真正理解用户
                        </div>
                        </div>

                        <div class="feature">
                        <span class="fa fa-play-circle-o "></span>
                        <div class="description">
                        <strong>精致的服务</strong> <br />
                        竭尽全力，为每个热爱旅游的人，个性化地提供悉心舒适的服务
                        </div>
                        </div>

                        </div>


                        <div class="rightside">
                        <img src="/images/thumbs/1.png" alt="" class="wow bounceInRight animated imagethumb2" data-wow-offset="300" data-wow-delay="0.2s" />
                        </div>

        </div>
        </div>




        <div class="common_section" id="faqs_part">
        <div class="container">

        			<h2>常见问题</h2>
                    <h4>轻松几步，为您推荐完美准确的旅游路线</h4>


                    <div class="faqbox">
                    <div class="title">没有旅行过可以使用吗？</div>
                    <p>
                    完全可以哦！添加喜好可以为您推荐。
                    </p>
                    </div>

                    <div class="faqbox longer">
                    <div class="title">会泄露隐私吗？</div>
                    <p>
                    当然不会！所有的数据我们都会保管好，永不外泄！
                    </p>
                    </div>


                    <div class="faqbox">
                    <div class="title">国外的旅游景点也有吗？</div>
                    <p>
                    是的，我们为全球客户提供路线推荐！
                    </p>
                    </div>


                    <div class="faqbox">
                    <div class="title">路线是不是只有一条呢？</div>
                    <p>
                    当然不是，我们为您推荐各种路线，您可以选择一条进行旅行！
                    </p>
                    </div>


                    <div class="faqbox">
                    <div class="title">有客服联系吗？</div>
                    <p>
                    我们有官方群等您加入！
                    </p>
                    </div>



        </div>
        </div>




        <div class="common_section" id="testimonials_part">
        <div class="container">

        			<h2>享誉全球</h2>
                    <h4 style="margin:0 0 40px 0;">轻松几步，为您推荐完美准确的旅游路线</h4>


                   	<br clear="all" />

                    <ul class="bxslider">

                    <li>
                    <div class="testimonial_box">
                    <div class="quote_button"><img src="/images/icons/i7.png" alt="" /></div>
                    <div class="para">
                      没有想到E旅行竟有如此强大的功能！个性化的推荐，不用我耗费很长时间计划
                      注册登陆输入喜好，直接推荐，真是太棒了！
                    </div>
                    </div>
                    </li>

                    </ul>


        </div>
        </div>





        <!--<div class="pricing_table_section" id="pricing_part">
        <div class="container">

        			<h2>Price Table</h2>
                    <h4>term sheet convertible note colluding bootstrapping</h4>


                   	<div class="insider">


                    <div class="block">
                    <div class="head">
                    <h2>Basic</h2>
                    <p>From <strong>$59</strong> per month</p>
                    </div>
                    <ul>
                    <li>Total Users <span>10</span></li>
                    <li>Unlimited Styles <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Advance Protection <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Cloud Storage <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>24/7 Customer Service <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Backup Service <span><img src="images/icons/i9.png" alt="" /></span></li>
                    <li><h5>$59 Per Month</h5> <a href="#" class="button5">SIGN UP</a></li>
                    </ul>
                    </div>


                    <div class="block">
                    <div class="head">
                    <h2>Premium</h2>
                    <p>From <strong>$59</strong> per month</p>
                    </div>
                    <ul>
                    <li>Total Users <span>10</span></li>
                    <li>Unlimited Styles <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Advance Protection <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Cloud Storage <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>24/7 Customer Service <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Backup Service <span><img src="images/icons/i9.png" alt="" /></span></li>
                    <li><h5>$59 Per Month</h5> <a href="#" class="button5 button6">SIGN UP</a></li>
                    </ul>
                    </div>



                    <div class="block">
                    <div class="head">
                    <h2>Ultimate</h2>
                    <p>From <strong>$59</strong> per month</p>
                    </div>
                    <ul>
                    <li>Total Users <span>10</span></li>
                    <li>Unlimited Styles <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Advance Protection <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Cloud Storage <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>24/7 Customer Service <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Backup Service <span><img src="images/icons/i9.png" alt="" /></span></li>
                    <li><h5>$59 Per Month</h5> <a href="#" class="button5">SIGN UP</a></li>
                    </ul>
                    </div>


                    </div>


        </div>
      </div>-->




        <div class="common_section" id="contact_part">
        <!--<div class="container">-->

        <div class="main">
      		<div class="header1" >

      		</div>

      			<form action="/UserAction/register" method="POST" role="form">
      				<ul class="left-form">
      					<h2>新账号:</h2>
      					<li>
      						<input type="text"   placeholder="用户名" name="username" required/>
      						<a href="#" class="icon ticker"> </a>
      						<div class="clear"> </div>
      					</li>

      					<li>
      						<input type="password"   placeholder="密码" name="password" required/>
      						<a href="#" class="icon into"> </a>
      						<div class="clear"> </div>
      					</li>
      					<li>
      						<input type="password"   placeholder="重复密码" name="repassword" required/>
      						<a href="#" class="icon into"> </a>
      						<div class="clear"> </div>
      					</li>
                <li>
      						<input type="text"   placeholder="喜好" name="prefer" required/>
      						<a href="#" class="icon ticker"> </a>
      						<div class="clear"> </div>
      					</li>

      					<input type="submit" value="创建账号">
      						<div class="clear"> </div>
      				</ul>
      			</form>

                <form action="UserAction/login" method="post" role="form">
                    <ul class="right-form">
                        <h3>登陆:</h3>
                        <div>
                            <li><input type="text"  placeholder="用户名" name="username" required/></li>
                            <li> <input type="password"  placeholder="密码" name="password" required/></li>
                            <h4>Love Travelling, Love Life!</h4>
                            <input type="submit"  value="登陆" >
                        </div>
                        <div class="clear"> </div>
                    </ul>
                    <div class="clear"> </div>
                </form>

        </div>




        <div class="subscribe_section" id="subscribe_part">
        <div class="container">


        			<!--<h2>Subscribe to our newsletter</h2>


                   	<br clear="all" />


                    <form method="post">
                    <input type="email" placeholder="Enter your e-Mail" />
                    <input type="submit" value="SUBSCRIBE" />
                  </form>-->




        </div>
        </div>




        <div class="common_section">
        <div class="container">


            		<a href="#" class="footer_logo"><img src="images/logo.png" alt="" /></a>



        </div>
        </div>


        </div><!--wrapper-->


		<script>
            jQuery("#layerslider").layerSlider({
                responsive: false,
                responsiveUnder: 1100,
                layersContainer: 1100,
                skin: 'fullwidth',
                hoverPrevNext: false,
                skinsPath: 'layerslider/skins/'
            });


        </script>

		<script src="js/wow.js"></script>
        <script>
        wow = new WOW(
          {
            animateClass: 'animated',
            offset:       100
          }
        );
        wow.init();
        document.getElementById('moar').onclick = function() {
          var section = document.createElement('section');
          section.className = 'section--purple wow fadeInDown';
          this.parentNode.insertBefore(section, this);
        };
        </script>

		<script type="text/javascript">
		$(function() {
		$('a[href*=#]:not([href=#])').click(function() {
		if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
		var target = $(this.hash);
		target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
		if (target.length) {
		$('html,body').animate({
		scrollTop: target.offset().top - 132
		}, 2000);
		return false;
		}
		}
		});
		});
        </script>


		<script type="text/javascript">


        $(document).ready(function() {

        if($(window).width() <= 1200){


        $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
        if (target.length) {
        $('html,body').animate({
        scrollTop: target.offset().top - 132
        }, 2000);
        return false;
        }
        }
        });
        });



        }

        });


        </script>



</body>
</html>
