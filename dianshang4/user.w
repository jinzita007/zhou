<?xml version="1.0" encoding="utf-8"?>                                                                                                                                                                                    
                                                                                                                                                                                                                          
<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"                                                                                                           
  design="device:mobile;" xid="window">                                                                                                                                                                                   
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:13px;top:202px;"/>                                                                                                        
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"                                                                                                                                        
    xid="panel">                                                                                                                                                                                                          
    <div class="x-panel-content" xid="content1">                                                                                                                                                                          
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar">                                                                                                                                 
        <div class="x-titlebar-left" xid="div2"/>                                                                                                                                                                         
        <div class="x-titlebar-title" xid="div3"/>                                                                                                                                                                        
        <div class="x-titlebar-right reverse" xid="div4">                                                                                                                                                                 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-label"                                                                                                            
            label="设置" xid="button1">                                                                                                                                                                                     
            <i xid="i1"/>                                                                                                                                                                                                 
            <span xid="span8">设置</span>                                                                                                                                                                                   
          </a>                                                                                                                                                                                                            
        </div>                                                                                                                                                                                                            
      </div>                                                                                                                                                                                                              
      <div class="text-center o-user">                                                                                                                                                                                    
        <img alt="" xid="image1" class="img1" bind-attr-src="$model.getImageUrl('./img/user.png')"/>                                                                                                                      
        <div xid="div1" class="h4">                                                                                                                                                                                       
          <a xid="a1" class="text-white" bind-click="loginBtnClick"><![CDATA[立即登录]]></a>                                                                                                                                  
        </div>                                                                                                                                                                                                            
        </div>                                                                                                                                                                                                              
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card">                                                                                                                       
        <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified"                                                                                                            
          tabbed="true" xid="buttonGroup3">                                                                                                                                                                               
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"                                                                                                                     
            label="我的发现" xid="button5" icon="icon-search">                                                                                                                                                  
            <i xid="i13" class="icon text-muted icon-search"/>                                                                                                                                            
            <span xid="span38" class="text-muted">我的发现</span>                                                                                                                                                               
          </a>                                                                                                                                                                                                            
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"                                                                                                                     
            label="我的订单" xid="button7" icon="icon-document">                                                                                                                                                               
            <i xid="i14" class="icon text-muted icon-document"/>                                                                                                                                                         
            <span xid="span39" class="text-muted">我的订单</span>                                                                                                                                                               
          </a>                                                                                                                                                                                                            
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"                                                                                                                     
            label="我的商店" xid="button9" icon="icon-bag">                                                                                                                                                                    
            <i xid="i15" class="icon text-muted icon-bag"/>                                                                                                                                                              
            <span xid="span40" class="text-muted">我的商店</span>                                                                                                                                                               
          </a>                                                                                                                                                                                                            
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"                                                                                                                     
            label="收藏" xid="button10" icon="icon-ios7-star">                                                                                                                                                          
            <i xid="i16" class="icon text-muted icon-ios7-star"/>                                                                                                                                                     
            <span xid="span41" class="text-muted">收藏</span>                                                                                                                                                               
          </a>                                                                                                                                                                                                            
        </div>                                                                                                                                                                                                            
      </div>                                                                                                                                                                                                              
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card">                                                                                                                       
        <ul xid="ul1">                                                                                                                                                                                                    
          <li class="list-group-item" xid="li1">                                                                                                                                                                          
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"                                                                                                       
              label="button" xid="button12" icon="icon-ios7-arrow-right">                                                                                                                                                 
              <i xid="i18" class="icon-ios7-arrow-right text-muted"/>                                                                                                                                                     
              <span xid="span17"/>                                                                                                                                                                                        
            </a>                                                                                                                                                                                                          
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"                                                                                                                  
              icon="icon-bag" xid="button13">                                                                                                                                                                             
              <i xid="i26" class="icon-bag text-warning"/>                                                                                                                                                                
              <span xid="span18"/>                                                                                                                                                                                        
            </a>                                                                                                                                                                                                          
            <span xid="span16"><![CDATA[我的商城]]></span>                                                                                                                                                                                
          </li>                                                                                                                                                                                                           
          <li class="list-group-item" xid="li1">                                                                                                                                                                          
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"                                                                                                       
              label="button" xid="button14" icon="icon-ios7-arrow-right">                                                                                                                                                 
              <i xid="i27" class="icon-ios7-arrow-right text-muted"/>                                                                                                                                                     
              <span xid="span20"/>                                                                                                                                                                                        
            </a>                                                                                                                                                                                                          
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"                                                                                                                  
              icon="icon-clipboard" xid="button15">                                                                                                                                                                       
              <i xid="i28" class="icon-clipboard"/>                                                                                                                                                                       
              <span xid="span21"/>                                                                                                                                                                                        
            </a>                                                                                                                                                                                                          
            <span xid="span19"><![CDATA[我的订单]]></span>                                                                                                                                                                                
          </li>                                                                                                                                                                                                           
          <li class="list-group-item" xid="li1">                                                                                                                                                                          
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"                                                                                                       
              label="button" xid="button16" icon="icon-ios7-arrow-right">                                                                                                                                                 
              <i xid="i29" class="icon-ios7-arrow-right text-muted"/>                                                                                                                                                     
              <span xid="span23"/>                                                                                                                                                                                        
            </a>                                                                                                                                                                                                          
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"                                                                                                                  
              icon="icon-ios7-briefcase-outline" xid="button17">                                                                                                                                                          
              <i xid="i30" class="icon-ios7-briefcase-outline text-danger"/>                                                                                                                                              
              <span xid="span24"/>                                                                                                                                                                                        
            </a>                                                                                                                                                                                                          
            <span xid="span22">我的钱包</span>                                                                                                                                                                                
          </li>                                                                                                                                                                                                           
        </ul>                                                                                                                                                                                                             
      </div>                                                                                                                                                                                                              
      </div>                                                                                                                                                                                                                
  </div>                                                                                                                                                                                                                  
</div>                                                                                                                                                                                                                    
                                                                                                                                                                                                                          