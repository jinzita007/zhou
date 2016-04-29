<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:67px;top:20px;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card"
    xid="panel2"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1"> 
        <div class="x-titlebar-left" xid="div2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            label="登录" xid="button6" icon="icon-ios7-arrow-back" onClick="{operation:'window.close'}"> 
            <i xid="i2" class="icon-ios7-arrow-back"/>  
             
          </a>  
          </div>  
        <div class="x-titlebar-title" xid="div3"><span xid="span6">登录</span></div>  
        <div class="x-titlebar-right reverse" xid="div4"/> 
      </div> 
    </div>  
    <div class="x-panel-content  x-cards panel-body" xid="content1"> 
      <div xid="div1" class="list-group"> 
        <div class="list-group-item"> 
          <div class="input-group" xid="div7"> 
            <span class="input-group-addon" xid="span2"> 
              <i class="icon-ios7-contact"/> 
            </span>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-inputText" xid="nameInput" bind-value="'电子邮箱/手机号'"/>
          </div> 
        </div>  
        <div class="list-group-item" xid="div6"> 
          <div class="input-group" xid="div8"> 
            <span class="input-group-addon" xid="span3"> 
              <i class="icon-unlocked" xid="i3"/> 
            </span>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-inputText" xid="passwordInput" bind-value="'密码'"/>
          </div> 
        </div> 
      </div>  
      <a component="$UI/system/components/justep/button/button" class="btn x-black btn-only-label btn-block"
        label="登录" xid="button1" style="background-color:#FF9F00;"> 
        <i xid="i4"/>  
        <span xid="span4">登录</span> 
      </a>  
      <div class="panel-body"><p xid="p1"><a xid="a1" class="pull-right" style="margin-left:10px;" bind-click="forgotClick"><![CDATA[忘记密码]]></a>
     <a xid="a1" class="pull-right" bind-click="a1Click"><![CDATA[免费注册]]></a>
  </p></div></div> 
  </div> 
   <div class="clearfix"/>
</div>
