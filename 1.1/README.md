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
```
html
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
```
html
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

