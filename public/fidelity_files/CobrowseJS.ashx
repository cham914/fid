(function() {/*

 Copyright The Closure Library Authors.
 SPDX-License-Identifier: Apache-2.0
*/
'use strict';/*
 Copyright (c) 2022 Glance Networks, Inc.
 Copyright 2022 Glance Networks, Inc.
*/
window.GLANCE=window.GLANCE||{};window.GLANCE.VERSION="5.8.5.0";window.GLANCE.PATCH="";window.GLANCE.Lib=window.GLANCE.Lib||{};
var l=function(){var a=navigator.userAgent.toLowerCase(),c=navigator.platform.toLowerCase(),b=a.match(/(edge)[\s\/:]([\w\d\.]+)?/)||a.match(/(opera|ie|firefox|chrome|crios|version)[\s\/:]([\w\d\.]+)?.*?(safari|version[\s\/:]([\w\d\.]+)|$)/)||a.match(/(rv):([\w\d\.]+)/)||[null,"unknown",0];"crios"===b[1]?b[1]="chrome":"rv"===b[1]&&(b[1]="ie");a={extend:Function.prototype.extend,name:"version"==b[1]?b[3]:b[1],version:"ie"==b[1]&&document.documentMode||parseFloat("opera"==b[1]&&b[4]?b[4]:b[2]),g:{name:a.match(/ip(?:ad|od|hone)/)||
c.match(/mac/)&&"undefined"!==typeof navigator.a?"ios":(a.match(/(?:webos|android)/)||c.match(/mac|win|linux/)||["other"])[0]},A:{G:!!document.evaluate,C:!!window.F,query:!!document.querySelector,json:!!window.JSON},B:{},D:function(){return"ios"==this.g.name||"android"==this.g.name}};document.documentMode&&window.XDomainRequest?(a.name="ie",a.version=document.documentMode):window.navigator&&navigator.appVersion&&-1!=navigator.appVersion.indexOf("MSIE 7.")&&(a.name="ie",a.version="7");a[a.name]=!0;
a[a.name+parseInt(a.version,10)]=!0;a.g[a.g.name]=!0;return a}();if(void 0===aa)var aa=function(a){return JSON.stringify(a)};function m(a,c,b){v(window,"addEventListener",a,c,b)}function w(a,c,b){var f={};f[c]=b;a.postMessage(f,"*")}function y(a,c){v(window,"addEventListener","message",function(b){if("string"===typeof b.data)try{var f=JSON.parse(b.data)}catch(r){return!1}else f=b.data;void 0!==f[a]&&c(b.source,f[a])})}
function C(){this.name="glance_ssn_info";var a=new D,c=a.b.location.hostname;for(a=a.b;""===c&&a.parent!==a;)c=a.parent.location.hostname,a=a.parent;this.domain=ba(c)}C.prototype.get=function(){return this.c()?unescape(document.cookie.replace(new RegExp("(?:^|.*;\\s*)"+escape(this.name).replace(/[\-\.\+\*]/g,"\\$&")+"\\s*\\=\\s*((?:[^;](?!;))*[^;]?).*"),"$1")):null};
C.prototype.f=function(){var a=new Date;a.setDate(a.getDate()-1);document.cookie=escape(this.name)+"=; expires="+a.toGMTString()+"; domain="+this.domain+"; path=/"};C.prototype.c=function(){return(new RegExp("(?:^|;\\s*)"+escape(this.name).replace(/[\-\.\+\*]/g,"\\$&")+"\\s*\\=")).test(document.cookie)};function E(){this.name="glance_ssn_info"}E.prototype.get=function(){return this.c()?localStorage.getItem(this.name):null};
E.prototype.f=function(){localStorage.removeItem(this.name);localStorage.removeItem(this.name+"_exp")};E.prototype.c=function(){var a=localStorage.getItem(this.name+"_exp");if(!a)return!1;a=new Date(a);return a<new Date?(this.f(),!1):!0};function G(){this.a=[new C,new E]}G.prototype.get=function(){return this.a[0].get()||this.a[1].get()};G.prototype.f=function(){this.a[0].f();this.a[1].f()};G.prototype.c=function(){return this.a[0].c()||this.a[1].c()};
function D(){var a=window;this.a=a.document;this.b=a;var c=[["hidden","visibilitychange"],["mozHidden","mozvisibilitychange"],["webkitHidden","webkitvisibilitychange"],["msHidden","msvisibilitychange"],["oHidden","ovisibilitychange"]];for(a=0;a<c.length&&!(c[a][0]in document);a++);}
function ba(a){var c=new RegExp(/^(?:[a-z]{1,5}:\/\/|)([^:\?\/]*)/),b=a.match(/^\d+\.\d+.\d+.\d+$/);c=c.exec(a);if(b)return a;if(null===c||2!==c.length)return"about:"!==a&&H("ERR_DOMAINPARSE: "+a),null;b=c[1].split(".");return 1===b.length?(H("ERR_DOMAINPARSE: "+a),null):2===b.length?b.join("."):3===b.length?b.slice(1).join("."):4>=b[b.length-2].length?b.slice(b.length-3).join("."):b.slice(b.length-2).join(".")}D.prototype.getElementsByTagName=function(a){return v(this.a,"getElementsByTagName",a)};
function J(a,c,b){var f=a.a.createElement("script");b&&f.addEventListener("load",b);f.setAttribute("type","text/javascript");f.setAttribute("charset","UTF-8");for(b=0;b<c.length;b++)f.setAttribute(c[b][0],c[b][1]);a.a.head.appendChild(f)}D.prototype.head=function(){return void 0!==this.a.head?this.a.head:this.getElementsByTagName("head")[0]};
function K(a,c){a.b.addEventListener&&(document.readyState.match(/complete/)?c():(a.b.addEventListener("load",c),a.a.addEventListener("DOMContentLoaded",c,!1)))}
function O(a){if(void 0!==window.pageXOffset)return{x:Math.round(a.b.pageXOffset),y:Math.round(a.b.pageYOffset)};if(void 0!==document.documentElement.scrollTop)return{x:a.a.documentElement.scrollLeft,y:a.a.documentElement.scrollTop};if(void 0!==document.body.scrollLeft)return{x:a.a.body.scrollLeft,y:a.a.body.scrollTop};throw Error("Can't get page scroll");}
D.prototype.scrollTo=function(a,c,b){var f=O(this);f[a]=c;a={left:f.x,top:f.y,behavior:b?"smooth":"auto"};l.ie11||l.edge?window.scrollTo(f.x,f.y):window.scrollTo(a);O(this)};D.prototype.addEventListener=function(a,c,b){v(this.a,"addEventListener",a,c,b)};D.prototype.removeEventListener=function(a,c,b){v(this.a,"removeEventListener",a,c,b)};function P(a){this.a=a}P.prototype.addEventListener=function(a,c,b){v(this.a,"addEventListener",c,b)};
P.prototype.removeEventListener=function(a,c,b){v(this.a,"removeEventListener",c,b)};function v(a,c,...b){return P.b&&P.a&&a.nodeType?"#document"===a.nodeName?P.a.document[c].apply(a,b):"#document-fragment"===a.nodeName?P.a.DocumentFragment.prototype[c].apply(a,b):P.a.document.body[c].apply(a,b):P.b&&P.a&&"[object Window]"===a.toString()?P.a.window[c].apply(a,b):a[c].apply(a,b)}function Q(a,c,b){a.a.style.left=c+"px";a.a.style.top=b+"px"}
P.prototype.moveTo=function(a,c){function b(){10>t++?(r+=n,g+=z,Q(f,Math.floor(r),Math.floor(g)),f.b=v(window,"setTimeout",b,20)):Q(f,a,c)}void 0!==this.b&&v(window,"clearTimeout",this.b);var f=this,r=parseInt(this.a.style.left),g=parseInt(this.a.style.top);isNaN(r)&&(r=-999);isNaN(g)&&(g=-999);var t=0,n=(a-r)/10,z=(c-g)/10;0===n&&0===z||b()};function R(){this.listeners=this.a={}}R.prototype.add=function(a,c){this.a[a]=this.a[a]||[];this.a[a].push(c)};
function S(a,...c){!window.console||!window.console[a]||window.GLANCE_COBROWSE&&window.GLANCE_COBROWSE.disableLogging||(c=c.map(b=>{if("object"===typeof b)try{b=JSON.stringify(b)}catch(f){console.error(f),b="unable to convert object to string"}return"string"===typeof b?b.replace(/[\r\n]/g," ").replace("<","&lt;"):b}),window.console[a](...c))}function H(...a){S("log",...a)}function T(...a){H("DEBUG:",...a)};function U(a,c){if(void 0!==a){var b=b||Object.keys(a);b.forEach(function(f){void 0!==a[f]&&(c[f]=a[f])})}}function V(a){var c={};if(!a)return c;var b=0;for(a=a.attributes;b<a.length;b++){var f=a[b].nodeName.match(/data-(.*)/);f&&2===f.length&&(c[f[1]]=a[b].nodeValue)}return c}function ca(){var a=window.GLANCE_COBROWSE?window.GLANCE_COBROWSE:{},c=document.getElementById("glance-cobrowse"),b=V(document.getElementById("cobrowsescript"));c=V(c);U(b,a);U(c,a);return a};var da=["5","8","5","0"].slice(0,3).join(".")+"M";
function ea(){this.b=document.getElementById("cobrowsescript")||document.getElementById("glance-cobrowse");if(null!==this.b){var a=ca();U(a,this);var c=/\/\/(.*)\//.exec("string"===typeof this.b.src?this.b.src:a.scriptserver+"/");this.a=c&&2===c.length?c[1]:"www.glancecdn.net/cobrowse";this.a=this.a.replace("/js","");a.cbexperiment&&(this.a=this.a.replace("cobrowse","cbexperiment"));this.h=a.groupid||this.b.getAttribute("groupid");this.v=a.ws||this.b.getAttribute("ws")||"www.glance.net";this.v.match("\\.glance\\.net$");
this.u=a.ui;this.o=a.site||this.b.getAttribute("site")||"production";this.l=JSON.parse(a.inputevents||"{}");this.m=a.presence;if(!this.h)throw Error("data-groupid missing");a=a.additionalgroupids||"";this.i=[this.h].concat(a?a.split(","):[]);this.i=this.i.map(function(b){if(!parseInt(b))throw Error("data-groupid invalid: "+b);return parseInt(b)});if(!/staging|production/i.test(this.o))throw Error("data-site invalid");}};function W(){return 0<window.location.href.indexOf("GlanceSession=1")};window.GLANCE=window.GLANCE||{};window.GLANCE.Cobrowse=window.GLANCE.Cobrowse||{};
function X(){function a(d){function e(q,A,I){return function(B){B.keyCode===A&&B[q+"Key"]&&(B=I.match(/showButton|toggleButton|showTerms/)?"VisitorUI":"Visitor",r(B,I)||(T("inputevent:",I),window.GLANCE.Cobrowse[B][I]()))}}for(var h in d)if(d.hasOwnProperty(h)){var k=h.match(/(ctrl|alt|shift)-(\d*)/);!k||3>k.length||m("keydown",e(k[1],parseInt(k[2]),d[h]),!0)}}function c(d){function e(h){return function(k){var q=h.match(/showButton|toggleButton|showTerms/)?"VisitorUI":"Visitor";k.stopPropagation();
k.preventDefault();r(q,h)||(T("button click",q,h),u[q][h]())}}["glance_button","data-glancebutton"].forEach(function(h){for(var k=d.querySelectorAll("["+h+"]"),q=0;k&&q<k.length;q++){var A=k[q].getAttribute(h);"start"===A&&(A="startSession");k[q].addEventListener("click",e(A))}})}function b(){return u.Visitor}function f(d,e){u[e][d]=function(h){d.match(/showButton|toggleButton|showTerms/)&&"Visitor"==e&&(e="VisitorUI");g(function(){u[e][d](h)},e)}}function r(d,e){if(!t)return!1;T("forward event:",
d,e);w(window.top,"forwardevent",{namespace:d,funcname:e});return!0}function g(d,e){e=e||"Visitor";if(v(n.a,"getElementById",("glance_"+e).toLowerCase()))u[e].loaded?d&&d():d&&H("SCRIPT_NOT_LOADED:"+e);else if(d&&(Y._onload[e]=d),t||"Visitor"!==e||x.u||g(null,"VisitorUI"),J(n,[["id",("glance_"+e).toLowerCase()],["src",L+"/GlanceCobrowse"+e+"_"+M+".js"]]),"Visitor"===e)for(e=document.getElementsByTagName("iframe"),d=0;d<e.length;d++)e[d].contentWindow&&w(e[d].contentWindow,"glance_load",{j:!0})}window.GLANCE.runTroubleshooter=
function(){J(n,[["src","https://"+x.a+"/js/Troubleshooter.js"]])};window.GLANCE.checkHTML=function(){J(n,[["src","https://"+x.a+"/js/HTMLChecker.js"]])};if(window.localStorage&&window.XMLHttpRequest&&window.atob){var t=window.parent!==window,n=new D,z=!1,x=new ea,M=da,u=window.GLANCE.Cobrowse,L="//"+x.a+"/js";if(!x.a)if(window.console&&window.console.error)S("error",...["ASSERT"]);else throw Error("ASSERT");var N=new R,p=x.b;if(u.Loader&&p&&p.getAttribute("data-loaded"))H("ERR_DUP_SCRIPTS");else{p&&
p.setAttribute("data-loaded",!0);var Z=null;p=new Promise(d=>{Z=()=>{d()}});var Y={load:function(d){g(d)},loadScript:function(d,e){J(n,[["src",L+"/"+d+"_"+M+".js"]],e)},setUIReady:Z,_uiready:p,_eventListeners:N,_onload:{},_origpath:window.location.pathname};y("glance_load",function(d,e){d&&(d!==window.parent&&d.parent!==window?H("UNTRUSTED_LOAD_MSG"):(e.j&&g(),e.s&&null!==v(n.a,"getElementById","glance_visitor")&&w(d,"glance_load",{j:!0})))});t&&w(window.parent,"glance_load",{s:!0});window.addEventListener("message",
function(d){if("string"!==typeof d.data){if(b().loaded)return!0;d.data.glance_invoke&&(d.data.origin=d.origin,g(function(){window.postMessage(d.data,window.location.href)}))}});m("focus",function(){if(b().loaded)return!0;b().inSession()&&g()});u.Visitor={loaded:!1,inSession:function(){return(new G).c()},addEventListener:function(d,e){N.add(d,e)},removeEventListener:function(d,e){d=N.a[d];void 0!==d&&(e=d.indexOf(e),0<=e&&d.splice(e,1))}};p=["showButton","toggleButton","showTerms","setStyle"];t||(u.VisitorUI=
{},p.forEach(function(d){f(d,"VisitorUI")}));p=p.concat(["startSession","setStartParams"]);p.forEach(function(d){f(d,"Visitor")});u.Loader=Y;t||W()||!b().inSession()||g();!t&&W()&&g(null,"XDOM");K(n,function(){document.body&&!z&&(z=!0,c(document.body),a(x.l),x.m&&!t&&J(n,[["src",L+"/GlancePresenceVisitor_"+M+".js"]]))});y("forwardevent",function(d,e){T("received forwarded event:",e);if(d.top!==window)H("UNTRUSTED_KEYEVT");else window.GLANCE.Cobrowse[e.namespace][e.funcname]()})}}else S("error",...["ERR_COBROWSE_NOT_SUPP"])}
document.getElementById("cobrowsescript")||document.getElementById("glance-cobrowse")?X():(H("LOADER_PAGE_NOT_READY"),K(new D,X));}).call(window);
