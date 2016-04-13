今天的计划是：
1.增加弹窗功能（头部标题、中间内容是长方形的图片和图片下面是文字的内容）

4月13日的修改情况：
index.html文件：
296行：
```html  
<div class="main-n">
	 <h3>Jessica Wally</h3>
     <a href=""><img src="img/team/01.jpg" alt=""></a>
     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
</div>  
  
```

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
.main-h{
	
}
```
