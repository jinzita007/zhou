今天的计划是：
1.增加弹窗功能（头部标题、中间内容是长方形的图片和图片下面是文字的内容）

4月13日的修改情况：
一、index.html文件：
296行：
```html  
<div class="main-n">
	 <h3>Jessica Wally</h3>
     <a href=""><img src="img/team/01.jpg" alt=""></a>
     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
</div>  
  
```

二、style.css文件
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
```
三、插入二次弹出层的html内容：
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

四、二次弹出层功能js文件
index.html文件
578行：
```javascript
<script type="text/javascript">
                $(document).ready(function(){
                  $(".main-h").click(function(){

                    $(".main-m").show();

                    $(".main-m").css({
                      "opacity":"1",
                      "visibility":"visible",
                    });
                  
                    $(".main-m-bg").css({
                      "display":"block",
                      "cursor":"pointer"
                    });
                  });
                  $(".main-close").click(function(){
                      $(".main-m").hide();
                      $(".main-m-bg").css({
                      "display":"none",
                      "cursor":"pointer",
                    });
                  });

                });
 </script>

```

五、弹出层之后的bootstrap轮播图功能
292行：
```html
<div id="myCarousel" class="carousel slide">
	...
<!-- 轮播（Carousel）指标 -->
 <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
 </ol> 
 <!-- 轮播（Carousel）项目 -->
<div class="carousel-inner">
<div class="item active">
<div class="modal-content">
	...
</div>
<div class="item">
<div class="modal-content">
	...
</div>

</div>
</div>
</div>
</div>
```
4月14日的修改情况：
index.html文件：

```
329行和376行插入内容:
<a href="">
  <img src="img/team/01.jpg" alt="">
</a>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
```
注意上面不要了

重新修改情况
style.css文件：
```css
/*第一次弹窗的内容样式*/
/*第一次弹窗的内容的主体*/
.main-nn{
    height: 200px;
    border-bottom: 1px solid #ddd;
    margin-bottom: 50px;
    
}
/*第一次弹窗的内容(小标题)*/
.main-hm h3{
    margin-left: 200px;
}
.main-hm-i{
  float: left;
  position: relative;
  bottom:55px;
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
```
插入index.html文件
313行：
```html
<div class="modal-body">
<div class="main-n">
   <div class="main-nn">
      <a href="#" class="main-h main-hm"><h3>Jessica Wally</h3></a> //增加class="main-hm"
      <!--二次弹出效果-->
      <div class="main-m">
        ...
      </div>
      <div class="main-m-bg"></div>
                <a href="#" class="main-h main-hm"><h3>Jessica Wally</h3></a>
                <a href="#" class="main-hm-i"><img src="img/team/01.jpg" alt=""></a>
                <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
  </div>
  <div class="main-nn">
                <a href="#" class="main-h main-hm"><h3>Jessica Wally</h3></a>
                <a href="#" class="main-hm-i"><img src="img/team/01.jpg" alt=""></a>
                <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
  </div>
           <div class="main-nn">
                <a href="#" class="main-h main-hm"><h3>Jessica Wally</h3></a>
                <a href="#" class="main-hm-i"><img src="img/team/01.jpg" alt=""></a>
                <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
           <div class="main-nnn">
                <a href="#" class="main-h main-hm"><h3>Jessica Wally</h3></a>
                <a href="#" class="main-hm-i"><img src="img/team/01.jpg" alt=""></a>
                <p class="main-hm-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>


／／插入371行第二次轮播内容同上方法一样

</div>
</div>
```
以上的效果图：
![image](https://github.com/jinzita007/zhou/blob/master/1.1/img/tanchuang.jpg)0


bootstrap.css文件
5784行
```css
.modal-footer {
  padding: 15px;
  text-align: right;
  /*border-top: 1px solid #e5e5e5;*/
}
```
加载更多内容的效果：
首先建立新的jquery文件，实现进行封装
jquery.showMore.js文件
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
                        $(this).hide();
                    };
                });
            }
        });
    }
})();
```
插入index.html文件
从346行开始
```html
<div class="main-n">
    <ul class="showMoreNChildren" pagesize="1"> 
      <li>
        <div class="main-nn">
          ...
        </div>
      </li>
      <li>
        <div class="main-nn">
          ...
        </div>
      </li>
      <li>
        <div class="main-nn">
          ...
        </div>
      </li>
      <li>
        <div class="main-nnn">
          ...
        </div>
      <li>
  </ul>
 <script type="text/javascript">
    //调用显示更多内容
    $.showMore(".showMoreNChildren");
 </script>
</div>

```
style.css文件
从621行开始
```css
/*显示更多内容（ul去掉黑点）*/
.showMoreNChildren li,.showMoreNChildren2 li{
   list-style-type: none;
}
/*more按钮与图文间距*/
.btn-lg{
  margin-bottom: 15px;
}
```



























