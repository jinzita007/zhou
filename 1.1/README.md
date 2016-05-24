一、index.html文件：

jquery.showMore.js的位置：js/jquery.showMore.js

查看更多内容特效：
```javascript 
 (function () {
    var showMoreNChildren = function ($children, n) {
        //显示某jquery元素下的前n个隐藏的子元素
        var $hiddenChildren = $children.filter(":hidden");
        var cnt = $hiddenChildren.length;
        for (var i = 0; i < n && i < cnt ; i++) {
            $hiddenChildren.eq(i).show();
        }
        return cnt - n;//返回还剩余的隐藏子元素的数量
    }
    jQuery.showMore = function (selector) {
        if (selector == undefined) { selector = ".showMoreNChildren" }
        //对页中现有的ul的元素之后添加显示更多按钮，并绑定点击行为
        $(selector).each(function () {
            var pagesize = $(this).attr("pagesize") || 10;
            var $children = $(this).children();
            if ($children.length > pagesize) {
                for (var i = pagesize; i < $children.length; i++) {
                    $children.eq(i).hide();
                }
 
                $("<div class='showMorehandle'>加载更多</div>").insertAfter($(this)).click(function () {
                    if (showMoreNChildren($children, pagesize) <= 0) {
                        //如果目标元素没有隐藏的子元素了，就隐藏“点击加载更多”
                        $(this).show();
                    };
                });
            }
        });
    }
})();
```

index.html文件

增加一些幻灯片轮播图的功能

```html
<!-- Testimonials Section -->
<div id="testimonials-section" class="text-center">
  <div class="container">
    <div class="section-title center">
      <h2>What <strong>clients</strong> say</h2>
      <hr>
    </div>
    <div class="row">

    <div id="owl-demo" class="owl-carousel owl-theme">
    <div class="img_03">
    <div class="item animated hiding" data-animation="fadeInLeft
    " data-delay="600"><img class="lazyOwl" data-src="img/team/01.jpg" alt=""></div>
    </div>
    <div class="img_03">
    <div class="item animated hiding" data-animation="fadeInUp" data-delay="300"><img class="lazyOwl" data-src="img/team/02.jpg" alt=""></div>
    </div>
    <div class="img_03">
    <div class="item animated hiding" data-animation="fadeInUp" data-delay="300"><img class="lazyOwl" data-src="img/team/03.jpg" alt=""></div>
    </div>
    <div class="img_03">
    <div class="item animated hiding" data-animation="fadeInRight" data-delay="600"><img class="lazyOwl" data-src="img/team/04.jpg" alt=""></div>
    </div>
    <div class="img_03">
    <div class="item"><img class="lazyOwl" data-src="img/team/01.jpg" alt=""></div>
    </div>
    <div class="img_03">
    <div class="item"><img class="lazyOwl" data-src="img/team/02.jpg" alt=""></div>
    </div>
    <div class="img_03">
    <div class="item"><img class="lazyOwl" data-src="img/team/03.jpg" alt=""></div>
    </div>
    <div class="img_03">
    <div class="item"><img class="lazyOwl" data-src="img/team/04.jpg" alt=""></div>
    </div>
    <div class="img_03">
    <div class="item"><img class="lazyOwl" data-src="img/team/01.jpg" alt=""></div>
    </div>
    <div class="img_03">
    <div class="item"><img class="lazyOwl" data-src="img/team/02.jpg" alt=""></div>
    </div>
    <div class="img_03">
    <div class="item"><img class="lazyOwl" data-src="img/team/03.jpg" alt=""></div>
    </div>
    <div class="img_03">
    <div class="item"><img class="lazyOwl" data-src="img/team/04.jpg" alt=""></div>
    </div>
</div>
        </div>
      </div>
    </div>
```
多幅轮播图特效：

引入owlcarousel.js文件

animate.js文件
```javascript 
$(function(){
    $('#owl-demo').owlCarousel({
        items: 5,
        lazyLoad: true,
        /*itemsDesktop: true,
        itemsDesktopSmall: true,*/
        itemsTablet:true,
        itemsTabletSmall:false,
        itemsMobile:true,

    });
});

```

css位置：css/style.css

style.css文件
536行：
```css
/*模态框的内容－图片*/
.main-n img{
  width: 600px;
  height: 200px;
  margin-bottom: 20px;
}
/*模态框的内容-小标题*/
.main-n h3{
  margin-bottom: 30px;
}

/*二次弹出效果*/
.main-h{
  display: block;
}
.main-m{
  border-radius: 6px;
  visibility: hidden;
  top: 0; 
    left: 0;
  width: 100%;
  height: 400px;
  background: #fff;
  position: absolute;
  z-index: 101;

}
/*二次弹出效果-下边框*/
.main-m h3{
    min-height: 16.42857143px;
    padding: 15px;
    border-bottom: 1px solid #e5e5e5;
}
/*弹出后背景变成透明的暗淡色*/
.main-m-bg { 
  position: fixed; 
  height: 100%;
  width: 100%;
  background: #000;
  background: rgba(0,0,0,.8);
  z-index: 100;
  display: none;
  top: 0;
  left: 0; 
}
/*二次弹出效果-关闭效果*/
.main-close{
    font-size: 22px;
  position: absolute;
  top: 8px;
  right: 11px;
  color: #aaa;
  text-shadow: 0 -1px 1px rbga(0,0,0,.6);
  font-weight: bold;
  cursor: pointer;
  display: block;
}

/*第一次弹窗的内容样式*/
/*第一次弹窗的内容的主体*/
.main-nn{
    height: 145px;
    /*border-bottom: 1px solid #ddd;*/
    /*margin-bottom: 20px;*/ 
}
/*第一次弹窗的内容(小标题)*/
.main-hm h3{
    margin-left: 200px;
}
.main-hm-i{
  float: left;
  position: relative;
  bottom:45px;
}
/*第一次弹窗的内容(图像)*/
.main-hm-i img{
    width: 200px;
    height: 140px;
}
/*第一次弹窗的内容(段落)*/
.main-hm-p{
   text-align: justify;
   padding-left: 230px;
}
/*显示更多内容（ul去掉黑点）*/
.showMoreNChildren li,.showMoreNChildren2 li{
   list-style-type: none;
}
/*more按钮与图文间距*/
.btn-lg{
  margin-bottom: 15px;
}
/*加载更多的按钮位置*/
.showMorehandle{
   position: relative;
   right: 100px;
}
/*图片时弹窗（详细页)*/
.main-mm{
  border-radius: 6px;
  visibility: hidden;
  /*top: 0;*/
    /*left: 0;
    right: 0;*/

  height: 400px;
  background: #eee;
  position: absolute;
  z-index: 101;
  text-align: center;
}
/*图片时弹窗（详细页)弹出后背景变成透明的暗淡色*/
.main-mm-bg { 
  position: fixed; 
  height: 100%;
  width: 100%;
  background: #000;
  background: rgba(0,0,0,.8);
  z-index: 100;
  display: none;
  top: 0;
  left: 0; 
}
/*图片时弹窗（详细页)-关闭效果*/
.main-mm-close{
    font-size: 22px;
  position: absolute;
  top: 8px;
  right: 11px;
  color: #aaa;
  text-shadow: 0 -1px 1px rbga(0,0,0,.6);
  font-weight: bold;
  cursor: pointer;
  display: block;
}
```
插入二次弹出层的html内容：

312行：
```html
 <div class="modal-body">
          <div class="main-n">
                <a href="#" class="main-h"><h3>Jessica Wally</h3></a>
                <!--二次弹出效果-->
               <div class="main-m">
                   <h3>Jessica Wally</h3> 
                   <a href="">
                    <img src="img/team/01.jpg" alt="">
                   </a>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                   <a class="main-close">&#215;</a>          
               </div>
               <div class="main-m-bg"></div>

                <a href=""><img src="img/team/01.jpg" alt=""></a>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
  </div>
```
index.html文件

二次弹窗及图片时弹窗功能：

44行：
```javascript  
                $(document).ready(function(){
                  $(".main-h,.main-hm-i,.main-h-img").click(function(){

                    $(".main-m,.main-mm").show();

                    $(".main-m,.main-mm").css({
                      "opacity":"1",
                      "visibility":"visible",
                    });
                  
                    $(".main-m-bg,.main-mm-bg").css({
                      "display":"block",
                      "cursor":"pointer"
                    });
                  });
                  $(".main-close,.main-mm-close").click(function(){
                      $(".main-m,.main-mm").hide();
                      $(".main-m-bg,.main-mm-bg").css({
                      "display":"none",
                      "cursor":"pointer",
                    });
                  });

                });
  
```


index.html文件：

按钮触发模态框效果图

```html
  
<!-- Team Section -->
<div id="team-section" class="text-center">
  <div class="container">
    <div class="section-title center section-title-b">
    

           

      <h2>动态资讯</h2>
     

              
<!-- 按钮触发模态框及二次弹出窗等 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" 
   data-target="#myModal">
  More
</button>
  <!-- Swiper -->
       <!--<div class="swiper-container">
           <div class="swiper-wrapper">
               <div class="swiper-slide">-->
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">

      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">
               动态资讯
            </h4>
         </div>
         <div class="modal-body">
          <div class="main-n">
            <ul class="showMoreNChildren" pagesize="1">
              <li>
            <div class="main-nn">
                <a href="#" class="main-h main-hm"><h3>人类“更疯狂”，Google 无人车该如何？</h3></a>
                <!--二次弹出效果-->
               <div class="main-m">
                   <h3>人类“更疯狂”，Google 无人车该如何？</h3> 
                   <a href="">
                    <img src="http://www.ruichengkj.cn/uploadfile/2016/0407/20160407092506150.jpg" alt="">
                   </a>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                   <a class="main-close">&#215;</a>          
               </div>
               <div class="main-m-bg"></div>

                <a href="#" class="main-hm-i"><img src="http://www.ruichengkj.cn/uploadfile/2016/0407/20160407092506150.jpg" alt=""></a>
                <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
          <div class="main-nn">
                  <a href="#" class="main-h main-hm"><h3>以贷款产品比价切入消费信贷市场FinanzCheck获3300万欧元融资</h3></a>
                  <a href="#" class="main-hm-i"><img src="http://www.ruichengkj.cn/uploadfile/2016/0407/20160407092122435.jpeg" alt=""></a>
                  <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
              <div class="main-nn">
                  <a href="#" class="main-h main-hm"><h3>专注于就诊管理的CrossChxn获 1500 万美元 C 轮融资</h3></a>
                  <a href="#" class="main-hm-i"><img src="http://www.ruichengkj.cn/uploadfile/2016/0407/20160407091344278.jpeg" alt=""></a>
                  <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
            </li>


            <li>
              <div class="main-nn">
                  <a href="#" class="main-h main-hm"><h3>社会化客户关系管理平台Intercom融资5000万美元</h3></a>
                  <a href="#" class="main-hm-i"><img src="http://www.ruichengkj.cn/uploadfile/2016/0407/20160407090535110.png" alt=""></a>
                  <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
              <div class="main-nn">
                  <a href="#" class="main-h main-hm"><h3>人类“更疯狂”，Google 无人车该如何？</h3></a>
                  <a href="#" class="main-hm-i"><img src="http://www.ruichengkj.cn/uploadfile/2016/0407/20160407092506150.jpg" alt=""></a>
                  <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
              <div class="main-nn">
                  <a href="#" class="main-h main-hm"><h3>以贷款产品比价切入消费信贷市场FinanzCheck获3300万欧元融资</h3></a>
                  <a href="#" class="main-hm-i"><img src="http://www.ruichengkj.cn/uploadfile/2016/0407/20160407092122435.jpeg" alt=""></a>
                  <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
              <div class="main-nn">
                  <a href="#" class="main-h main-hm"><h3>专注于就诊管理的CrossChxn获 1500 万美元 C 轮融资</h3></a>
                  <a href="#" class="main-hm-i"><img src="http://www.ruichengkj.cn/uploadfile/2016/0407/20160407091344278.jpeg" alt=""></a>
                  <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
            </li>
            <li>
              <div class="main-nn">
                  <a href="#" class="main-h main-hm"><h3>社会化客户关系管理平台Intercom融资5000万美元</h3></a>
                  <a href="#" class="main-hm-i"><img src="http://www.ruichengkj.cn/uploadfile/2016/0407/20160407090535110.png" alt=""></a>
                  <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
              <div class="main-nn">
                  <a href="#" class="main-h main-hm"><h3>人类“更疯狂”，Google 无人车该如何？</h3></a>
                  <a href="#" class="main-hm-i"><img src="img/team/01.jpg" alt=""></a>
                  <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
              <div class="main-nn">
                  <a href="#" class="main-h main-hm"><h3>以贷款产品比价切入消费信贷市场FinanzCheck获3300万欧元融资</h3></a>
                  <a href="#" class="main-hm-i"><img src="img/team/01.jpg" alt=""></a>
                  <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
              <div class="main-nn">
                  <a href="#" class="main-h main-hm"><h3>专注于就诊管理的CrossChxn获 1500 万美元 C 轮融资</h3></a>
                  <a href="#" class="main-hm-i"><img src="img/team/01.jpg" alt=""></a>
                  <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
            </li>
            <li>
              
            </li>
        </ul>

              <script type="text/javascript">
              //调用显示更多内容
              $.showMore(".showMoreNChildren");
              </script>

          </div>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" 
               data-dismiss="modal">关闭
            </button>
            <!--<button type="button" class="btn btn-primary">
               提交更改
            </button>-->
         </div>
      </div><!-- /.modal-content -->

      </div>


</div>

<p>关注行业动态，了然互联网+，我们与时俱进与您同行</p>
</div>

    <div id="row">
      <div class="col-md-3 col-sm-6 team animated hiding" data-animation="fadeInLeft" data-delay="600">
        <div class="thumbnail"><div class="profile-photo"><a class="main-h-img"><img src="http://www.ruichengkj.cn/uploadfile/2016/0407/20160407092506150.jpg" alt="..." class="img-circle team-img"></a></div>
          <div class="caption">
            <h3>人类“更疯狂”，Google 无人车该如何？</h3>
            <!--<p>Founder</p>-->
            <!--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>-->
          </div>

        </div>
      </div>
      <div class="col-md-3 col-sm-6 team animated hiding" data-animation="fadeInUp" data-delay="300">
        <div class="thumbnail"><div class="profile-photo"><img src="http://www.ruichengkj.cn/uploadfile/2016/0407/20160407092122435.jpeg" alt="..." class="img-circle team-img"></div>
          <div class="caption">
            <h3>以贷款产品比价切入消费信贷市场FinanzCheck获3300万欧元融资</h3>
            <!--<p>Web Designer</p>-->
            <!--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>-->
          </div>
         
        </div>
      </div>
      <div class="col-md-3 col-sm-6 team animated hiding" data-animation="fadeInUp" data-delay="300">
        <div class="thumbnail"><div class="profile-photo"><img src="http://www.ruichengkj.cn/uploadfile/2016/0407/20160407091344278.jpeg" alt="..." class="img-circle team-img"></div>
          <div class="caption">
            <h3>专注于就诊管理的CrossChxn获 1500 万美元 C 轮融资</h3>
            <!--<p>Web Designer</p>-->
            <!--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>-->
          </div>
  
        </div>
      </div>
      <div class="col-md-3 col-sm-6 team animated hiding" data-animation="fadeInRight" data-delay="600">
        <div class="thumbnail"><div class="profile-photo"><img src="http://www.ruichengkj.cn/uploadfile/2016/0407/20160407090535110.png" alt="..." class="img-circle team-img"></div>
          <div class="caption">
            <h3>社会化客户关系管理平台Intercom融资5000万美元</h3>
            <!--<p>Project Manager</p>-->
            <!--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>-->

        </div>
      </div>
    </div>
    
    <!--按图片时弹窗（详细页）-->
   <div class="main-mm">
                   <h3>动态资讯</h3> 
                   <a href="#">
                    <img src="img/team/01.jpg" alt="">
                   </a>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                   <a class="main-mm-close">&#215;</a>          
    </div>
    <div class="main-mm-bg"></div>

  </div>
</div>
</div>

```

animate.css文件：

主要是鼠标按图片变大的特效：
```css
#owl-demo .item {
    display: block;
    margin: 0px;
}
#owl-demo img {
  display: block;
  width: 100%;
  height: auto;
}

.img_03{
  height: 150px;
  margin-left: 15px;
  margin-right: 15px;
}
/*鼠标按图片变大效果*/
.animated_01{
  animation-delay: 0.1s;
  -moz-animation-delay: 0.1s;
  -webkit-animation-delay: 0.1s; 
}
.animated_02{
  animation-delay: 0.3s;
  -moz-animation-delay: 0.3s;
  -webkit-animation-delay: 0.3s; 
}
.animated_03{
  animation-delay: 0.6s;
  -moz-animation-delay: 0.6s; 
  -webkit-animation-delay: 0.6s; 
}
.animated_04{
  animation-delay: 0.9s;
  -moz-animation-delay: 0.9s; 
  -webkit-animation-delay: 0.9s; 
}
.animated_05{
  animation-delay: 0.3s;
  -moz-animation-delay: 0.3s;
  -webkit-animation-delay: 0.3s;
}
.animated_06{
  animation-delay: 0.6s; 
  -moz-animation-delay: 0.6s; 
  -webkit-animation-delay: 0.6s;
}
```

























