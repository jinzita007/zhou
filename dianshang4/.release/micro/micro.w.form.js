define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/dianshang4/micro'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cFBVfyy';
	this._flag_='1ed42f0f31305626ccf6360c923b6be5';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fClassName":{"define":"fClassName","label":"标题","name":"fClassName","relation":"fClassName","type":"String"},"fID":{"define":"fID","label":"id","name":"fID","relation":"fID","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"rootClassDataCustomRefresh"},"idColumn":"fID","limit":20,"xid":"rootClassData"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fClassName":{"define":"fClassName","label":"分类名称","name":"fClassName","relation":"fClassName","type":"String"},"fID":{"define":"fID","label":"id","name":"fID","relation":"fID","type":"String"},"fRootID":{"define":"fRootID","label":"一级分类ID","name":"fRootID","relation":"fRootID","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"secondClassDataCustomRefresh"},"idColumn":"fID","limit":20,"xid":"secondClassData"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fClassImg":{"define":"fClassImg","label":"分类图片","name":"fClassImg","relation":"fClassImg","type":"String"},"fClassName":{"define":"fClassName","label":"分类名称","name":"fClassName","relation":"fClassName","type":"String"},"fID":{"define":"fID","label":"id","name":"fID","relation":"fID","type":"String"},"fSecondID":{"define":"fSecondID","label":"二级分类ID","name":"fSecondID","relation":"fSecondID","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"threeClassDataCustomRefresh"},"idColumn":"fID","limit":20,"xid":"threeClassData"});
}}); 
return __result;});