$(document).ready(function(){var e=skrollr,i=!1;$(window).width()>1024&&(e.init({mobileCheck:function(){return!1}}),i=!0),$(window).on("resize",function(){$(window).width()<1024&&i?(e.init().destroy(),i=!1):$(window).width()>1024&&(e.init({mobileCheck:function(){return!1}}),i=!0)})}),$(document).ready(function(){$(".navbar .navbar-collapse").waypoint("sticky")}),$(document).ready(function(){$(".js-activated").dropdownHover({instantlyCloseOthers:!1,delay:0}).dropdown(),$(".dropdown a").on("click",function(e){window.location.href=$(this).attr("href")})}),$(document).ready(function(){function e(){p?$(d+" .caption .fadeIn-1, "+d+" .caption .fadeIn-2, "+d+" .caption .fadeIn-3").css({opacity:0}):$(d+" .caption .fadeIn-1, "+d+" .caption .fadeIn-2, "+d+" .caption .fadeIn-3").stop().delay(800).animate({opacity:0},{duration:400,easing:"easeInCubic"})}function i(){p?$(d+" .caption .fadeInDown-1, "+d+" .caption .fadeInDown-2, "+d+" .caption .fadeInDown-3").css({opacity:0,top:"-15px"}):$(d+" .caption .fadeInDown-1, "+d+" .caption .fadeInDown-2, "+d+" .caption .fadeInDown-3").stop().delay(800).animate({opacity:0,top:"-15px"},{duration:400,easing:"easeInCubic"})}function t(){p?$(d+" .caption .fadeInUp-1, "+d+" .caption .fadeInUp-2, "+d+" .caption .fadeInUp-3").css({opacity:0,top:"15px"}):$(d+" .caption .fadeInUp-1, "+d+" .caption .fadeInUp-2, "+d+" .caption .fadeInUp-3").stop().delay(800).animate({opacity:0,top:"15px"},{duration:400,easing:"easeInCubic"})}function a(){p?$(d+" .caption .fadeInLeft-1, "+d+" .caption .fadeInLeft-2, "+d+" .caption .fadeInLeft-3").css({opacity:0,left:"15px"}):$(d+" .caption .fadeInLeft-1, "+d+" .caption .fadeInLeft-2, "+d+" .caption .fadeInLeft-3").stop().delay(800).animate({opacity:0,left:"15px"},{duration:400,easing:"easeInCubic"})}function o(){p?$(d+" .caption .fadeInRight-1, "+d+" .caption .fadeInRight-2, "+d+" .caption .fadeInRight-3").css({opacity:0,left:"-15px"}):$(d+" .caption .fadeInRight-1, "+d+" .caption .fadeInRight-2, "+d+" .caption .fadeInRight-3").stop().delay(800).animate({opacity:0,left:"-15px"},{duration:400,easing:"easeInCubic"})}function n(){$(d+" .active .caption .fadeIn-1").stop().delay(500).animate({opacity:1},{duration:800,easing:"easeOutCubic"}),$(d+" .active .caption .fadeIn-2").stop().delay(700).animate({opacity:1},{duration:800,easing:"easeOutCubic"}),$(d+" .active .caption .fadeIn-3").stop().delay(1e3).animate({opacity:1},{duration:800,easing:"easeOutCubic"})}function l(){$(d+" .active .caption .fadeInDown-1").stop().delay(500).animate({opacity:1,top:"0"},{duration:800,easing:"easeOutCubic"}),$(d+" .active .caption .fadeInDown-2").stop().delay(700).animate({opacity:1,top:"0"},{duration:800,easing:"easeOutCubic"}),$(d+" .active .caption .fadeInDown-3").stop().delay(1e3).animate({opacity:1,top:"0"},{duration:800,easing:"easeOutCubic"})}function s(){$(d+" .active .caption .fadeInUp-1").stop().delay(500).animate({opacity:1,top:"0"},{duration:800,easing:"easeOutCubic"}),$(d+" .active .caption .fadeInUp-2").stop().delay(700).animate({opacity:1,top:"0"},{duration:800,easing:"easeOutCubic"}),$(d+" .active .caption .fadeInUp-3").stop().delay(1e3).animate({opacity:1,top:"0"},{duration:800,easing:"easeOutCubic"})}function r(){$(d+" .active .caption .fadeInLeft-1").stop().delay(500).animate({opacity:1,left:"0"},{duration:800,easing:"easeOutCubic"}),$(d+" .active .caption .fadeInLeft-2").stop().delay(700).animate({opacity:1,left:"0"},{duration:800,easing:"easeOutCubic"}),$(d+" .active .caption .fadeInLeft-3").stop().delay(1e3).animate({opacity:1,left:"0"},{duration:800,easing:"easeOutCubic"})}function c(){$(d+" .active .caption .fadeInRight-1").stop().delay(500).animate({opacity:1,left:"0"},{duration:800,easing:"easeOutCubic"}),$(d+" .active .caption .fadeInRight-2").stop().delay(700).animate({opacity:1,left:"0"},{duration:800,easing:"easeOutCubic"}),$(d+" .active .caption .fadeInRight-3").stop().delay(1e3).animate({opacity:1,left:"0"},{duration:800,easing:"easeOutCubic"})}var p=!0,d="#owl-main";$(d).owlCarousel({autoPlay:5e3,stopOnHover:!0,navigation:!0,pagination:!0,singleItem:!0,addClassActive:!0,transitionStyle:"fade",navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"],afterInit:function(){n(),l(),s(),r(),c()},afterMove:function(){n(),l(),s(),r(),c()},afterUpdate:function(){n(),l(),s(),r(),c()},startDragging:function(){p=!0},afterAction:function(){e(),i(),t(),a(),o(),p=!1}}),$(d).hasClass("owl-one-item")&&$(d+".owl-one-item").data("owlCarousel").destroy(),$(d+".owl-one-item").owlCarousel({singleItem:!0,navigation:!1,pagination:!1}),$("#transitionType li a").click(function(){$("#transitionType li a").removeClass("active"),$(this).addClass("active");var e=$(this).attr("data-transition-type");return $(d).data("owlCarousel").transitionTypes(e),$(d).trigger("owl.next"),!1}),$("#owl-testimonials").owlCarousel({autoPlay:5e3,stopOnHover:!0,navigation:!0,pagination:!0,singleItem:!0,addClassActive:!0,autoHeight:!0,transitionStyle:"fadeInAfterOut",navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"]}),$("#owl-projects").owlCarousel({navigation:!1,autoHeight:!0,slideSpeed:300,paginationSpeed:400,rewindNav:!1,singleItem:!0,navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"]}),$("#owl-latest-works").owlCarousel({autoPlay:5e3,stopOnHover:!0,navigation:!0,pagination:!0,rewindNav:!0,items:4,navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"]}),$("#owl-videos").owlCarousel({autoPlay:5e3,stopOnHover:!0,navigation:!0,pagination:!0,rewindNav:!0,items:5,navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"]}),$("#owl-audio").owlCarousel({autoPlay:5e3,stopOnHover:!0,navigation:!0,pagination:!0,rewindNav:!0,items:5,navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"]}),$("#owl-popular-posts").owlCarousel({autoPlay:5e3,stopOnHover:!0,navigation:!0,pagination:!0,rewindNav:!0,items:5,navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"]}),$("#owl-related-posts").owlCarousel({autoPlay:5e3,stopOnHover:!0,navigation:!0,pagination:!0,rewindNav:!0,items:2,itemsDesktopSmall:[1199,2],itemsTablet:[977,2],navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"]}),$("#owl-featured-works").owlCarousel({autoPlay:5e3,stopOnHover:!0,navigation:!0,pagination:!0,rewindNav:!0,singleItem:!0,transitionStyle:"goDown",navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"]}),$("#owl-work-samples").owlCarousel({autoPlay:5e3,stopOnHover:!0,navigation:!0,pagination:!0,rewindNav:!0,items:3,itemsDesktopSmall:[1199,3],itemsTablet:[977,2],navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"]}),$("#owl-work-samples-big").owlCarousel({autoPlay:5e3,stopOnHover:!0,navigation:!0,pagination:!0,rewindNav:!0,singleItem:!0,transitionStyle:"fadeUp",navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"]}),$("#owl-work, [id*='owl-work-modal']").owlCarousel({autoPlay:5e3,slideSpeed:200,paginationSpeed:600,rewindSpeed:800,stopOnHover:!0,navigation:!0,pagination:!0,rewindNav:!0,singleItem:!0,autoHeight:!1,navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"]}),$("#owl-office").owlCarousel({autoPlay:5e3,slideSpeed:200,paginationSpeed:600,rewindSpeed:800,stopOnHover:!0,navigation:!0,pagination:!0,rewindNav:!0,singleItem:!0,autoHeight:!0,transitionStyle:"fade",navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"]}),$("#owl-clients").owlCarousel({autoPlay:5e3,stopOnHover:!0,rewindNav:!0,items:4,itemsDesktopSmall:[1199,4],itemsTablet:[977,3],navigation:!0,pagination:!0,navigationText:["<i class='icon-left-open-mini'></i>","<i class='icon-right-open-mini'></i>"]}),$(".slider-next").click(function(){owl.trigger("owl.next")}),$(".slider-prev").click(function(){owl.trigger("owl.prev")})}),$(document).ready(function(){var e,i='main [class*="col-"]',t="fadeInUp";$(i).waypoint(function(){e+=100,$(this).delay(e).queue(function(i){$(this).toggleClass("animated"),$(this).toggleClass(t),e=0,i()})},{offset:"90%",triggerOnce:!0})}),$(document).ready(function(){function e(){i.isotope("reLayout")}var i=$(".items");i.imagesLoaded(function(){i.isotope({itemSelector:".item"})});var t;$(window).resize(function(){clearTimeout(t),t=setTimeout(e,100)}),$("a.panel-toggle.collapsed").click(function(){clearTimeout(t),t=setTimeout(e,100)}),$(".portfolio .filter li a").click(function(){$(".portfolio .filter li a").removeClass("active"),$(this).addClass("active");var e=$(this).attr("data-filter");return i.isotope({filter:e}),!1})}),$(document).ready(function(){var e=[{min_width:1680,columns:6},{min_width:1140,max_width:1680,columns:5},{min_width:1024,max_width:1440,columns:4},{min_width:768,max_width:1024,columns:3},{max_width:768,columns:1}],i=$(".items.fullscreen");i.imagesLoaded(function(){i.isotope({itemSelector:".item"})}),$(window).smartresize(function(){for(var t=$(window).width(),a=($(window).height(),0);a<e.length;a++)if((t>=e[a].min_width||!e[a].min_width)&&(t<e[a].max_width||!e[a].max_width)){i.find(".item").each(function(){$(this).width(Math.floor(i.width()/e[a].columns))});break}}),$(window).trigger("smartresize")}),$(document).ready(function(){var e=$(".posts");e.imagesLoaded(function(){e.isotope({itemSelector:".post"})}),$(".format-filter li a, .format-wrapper a").click(function(){var i=$(this).attr("data-filter");return e.isotope({filter:i}),$(".format-filter li a").removeClass("active"),$('.format-filter li a[data-filter="'+i+'"]').addClass("active"),$("html, body").animate({scrollTop:$(".format-filter").offset().top-130},600),!1}),$(window).on("resize",function(){$(".posts").isotope("reLayout")})}),$(document).ready(function(){$(".tabs.tabs-reasons").easytabs({cycle:1500}),$(".tabs.tabs-top, .tabs.tabs-circle-top, .tabs.tabs-2-big-top, .tabs.tabs-side").easytabs({animationSpeed:200,updateHash:!1})}),$(document).ready(function(){$(".panel-group .portfolio").length>0&&$(".panel-group .collapse.in").collapse({toggle:!0})}),!function(e,i,t){e.fn.scrollUp=function(i){e.data(t.body,"scrollUp")||(e.data(t.body,"scrollUp",!0),e.fn.scrollUp.init(i))},e.fn.scrollUp.init=function(a){var o=e.fn.scrollUp.settings=e.extend({},e.fn.scrollUp.defaults,a),n=(o.scrollTitle?o.scrollTitle:o.scrollText,e("<a/>",{id:o.scrollName,href:"#top"}).appendTo("body"));o.scrollImg||n.html(o.scrollText),n.css({display:"none",position:"fixed",zIndex:o.zIndex}),o.activeOverlay&&e("<div/>",{id:o.scrollName+"-active"}).css({position:"absolute",top:o.scrollDistance+"px",width:"100%",borderTop:"1px dotted"+o.activeOverlay,zIndex:o.zIndex}).appendTo("body"),scrollEvent=e(i).scroll(function(){switch(scrollDis="top"===o.scrollFrom?o.scrollDistance:e(t).height()-e(i).height()-o.scrollDistance,o.animation){case"fade":e(e(i).scrollTop()>scrollDis?n.fadeIn(o.animationInSpeed):n.fadeOut(o.animationOutSpeed));break;case"slide":e(e(i).scrollTop()>scrollDis?n.slideDown(o.animationInSpeed):n.slideUp(o.animationOutSpeed));break;default:e(e(i).scrollTop()>scrollDis?n.show(0):n.hide(0))}}),n.click(function(i){i.preventDefault(),e("html, body").animate({scrollTop:0},o.scrollSpeed,o.easingType)})},e.fn.scrollUp.defaults={scrollName:"scrollUp",scrollDistance:300,scrollFrom:"top",scrollSpeed:300,easingType:"linear",animation:"fade",animationInSpeed:200,animationOutSpeed:200,scrollText:"Scroll to top",scrollTitle:!1,scrollImg:!1,activeOverlay:!1,zIndex:2147483647},e.fn.scrollUp.destroy=function(a){e.removeData(t.body,"scrollUp"),e("#"+e.fn.scrollUp.settings.scrollName).remove(),e("#"+e.fn.scrollUp.settings.scrollName+"-active").remove(),e.fn.jquery.split(".")[1]>=7?e(i).off("scroll",a):e(i).unbind("scroll",a)},e.scrollUp=e.fn.scrollUp}(jQuery,window,document),$(document).ready(function(){$.scrollUp({scrollName:"scrollUp",scrollDistance:300,scrollFrom:"top",scrollSpeed:1e3,easingType:"easeInOutCubic",animation:"fade",animationInSpeed:200,animationOutSpeed:200,scrollText:"<i class='icon-up-open-mini'></i>",scrollTitle:" ",scrollImg:0,activeOverlay:0,zIndex:1001})}),$(document).ready(function(){$("a.scroll-to").click(function(){if($(window).width()>1024)var e=45;else var e=0;if(void 0!==$(this).attr("data-anchor-offset"))var i=$(this).attr("data-anchor-offset");else var i=0;return $("html, body").animate({scrollTop:$($(this).attr("href")).offset().top-e-i+"px"},{duration:1e3,easing:"easeInOutCubic"}),!1})}),$(document).ready(function(){$("body").scrollspy({target:".navbar-collapse",offset:50})}),$(document).ready(function(){$(".icon-overlay a").prepend('<span class="icn-more"></span>')}),$(".modal").on("hidden.bs.modal",function(){$(".video-container iframe").attr("src",$(".video-container iframe").attr("src"))}),$(document).ready(function(){$("a[data-rel]").each(function(){$(this).attr("rel",$(this).data("rel"))})}),$(document).ready(function(){$("[rel=tooltip]").length&&$("[rel=tooltip]").tooltip()}),$(document).ready(function(){function e(){var e=[{featureType:"water",elementType:"geometry.fill",stylers:[{color:"#d3d3d3"}]},{featureType:"transit",stylers:[{color:"#808080"},{visibility:"off"}]},{featureType:"road.highway",elementType:"geometry.stroke",stylers:[{visibility:"on"},{color:"#b3b3b3"}]},{featureType:"road.highway",elementType:"geometry.fill",stylers:[{color:"#ffffff"}]},{featureType:"road.local",elementType:"geometry.fill",stylers:[{visibility:"on"},{color:"#ffffff"},{weight:1.8}]},{featureType:"road.local",elementType:"geometry.stroke",stylers:[{color:"#d7d7d7"}]},{featureType:"poi",elementType:"geometry.fill",stylers:[{visibility:"on"},{color:"#ebebeb"}]},{featureType:"administrative",elementType:"geometry",stylers:[{color:"#a7a7a7"}]},{featureType:"road.arterial",elementType:"geometry.fill",stylers:[{color:"#ffffff"}]},{featureType:"road.arterial",elementType:"geometry.fill",stylers:[{color:"#ffffff"}]},{featureType:"landscape",elementType:"geometry.fill",stylers:[{visibility:"on"},{color:"#efefef"}]},{featureType:"road",elementType:"labels.text.fill",stylers:[{color:"#696969"}]},{featureType:"administrative",elementType:"labels.text.fill",stylers:[{visibility:"on"},{color:"#737373"}]},{featureType:"poi",elementType:"labels.icon",stylers:[{visibility:"off"}]},{featureType:"poi",elementType:"labels",stylers:[{visibility:"off"}]},{featureType:"road.arterial",elementType:"geometry.stroke",stylers:[{color:"#d6d6d6"}]},{featureType:"road",elementType:"labels.icon",stylers:[{visibility:"off"}]},{},{featureType:"poi",elementType:"geometry.fill",stylers:[{color:"#dadada"}]}],i=new google.maps.LatLng(googleLat,googleLong),t={zoom:15,center:i,disableDefaultUI:!0,scrollwheel:!1,styles:e},a=new google.maps.Map(document.getElementById("map"),t),o=new google.maps.Marker({position:i,title:googleMapTitle,icon:googleMapMarker});o.setMap(a)}("undefined"!=typeof googleLat||"undefined"!=typeof googleLat)&&(google.maps.event.addDomListener(window,"load",e),$('[id*="modal-contact"]').on("shown.bs.modal",function(){e()}))}),$(document).ready(function(){window.viewportUnitsBuggyfill.init()}),$(document).ready(function(){$("#contactform, #commentform").validate({errorPlacement:function(e,i){$(i).attr({placeholder:e.html()})},focusInvalid:!1,rules:{name:{required:!0,minlength:2},email:{required:!0,email:!0},message:{required:!0,minlength:10}},messages:{name:{required:"Please enter your name!",minlength:jQuery.format("Name requires at least {0} characters!")},email:{required:"Please enter your email!",email:"Please enter a valid email!"},message:{required:"Please enter a message!",minlength:jQuery.format("Message requires at least {0} characters!")}},submitHandler:function(e){return $("#contactform .btn-submit").html("Sending message ..."),$("#commentform .btn-submit").html("Sending comment ..."),$(e).ajaxSubmit({success:function(i,t,a,o){$(e).delay(1300).slideUp("fast"),$("#response").html(i).hide().delay(1300).slideDown("fast")}}),!1}})});