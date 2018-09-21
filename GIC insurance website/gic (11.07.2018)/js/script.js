!function(a){"use strict";var s=a(window),e=a("body"),t=a(".is-sticky");if(t.length>0){var l=a("#mainnav").offset();s.scroll(function(){var a=s.scrollTop();s.width()>991&&a>l.top+4?t.hasClass("has-fixed")||t.addClass("has-fixed"):t.hasClass("has-fixed")&&t.removeClass("has-fixed")})}var i=a("#slider");i.length>0&&i.carousel({interval:6e3,pause:"null"});var o=a(".has-carousel");o.length>0&&o.each(function(){var s=a(this),e=s.data("items")?s.data("items"):4,t=e>=3?3:e,l=t>=2?2:t,i=s.data("delay")?s.data("delay"):6e3,o=!!s.data("auto"),r=!!s.data("loop"),n=!!s.data("dots"),c=!!s.data("navs"),d=s.data("margin")?s.data("margin"):30;s.owlCarousel({navText:["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],items:e,loop:r,nav:c,dots:n,margin:d,autoplay:o,autoplayTimeout:i,autoplaySpeed:700,responsive:{0:{items:1},480:{items:l},768:{items:t},1170:{items:e}}})});var r=a(".logo-carousel");r.length>0&&r.owlCarousel({items:5,loop:!0,margin:20,nav:!0,responsive:{0:{items:3},379:{items:4},720:{items:5},1280:{items:6}}});var n=a(".has-parallax");n.length>0&&n.each(function(){a(this).parallaxie({speed:.3,offset:0})});var c=window.location.href;a(".nav li a").each(function(){c===this.href&&a(this).closest("li").addClass("active")});var d=a("#preloader");d.length>0&&s.on("load",function(){d.children().fadeOut(300),d.delay(150).fadeOut(500),e.delay(100).css({overflow:"visible"})});var h=a(".scroll-to");h.length>0&&h.on("click",function(){return a("html, body").animate({scrollTop:a(a.attr(this,"href")).offset().top},500),!1});var f=a(".imagebg");f.length>0&&f.each(function(){var s=a(this),e=s.parent(),t=s.data("overlay"),l=s.children("img").attr("src"),i=void 0!==t&&""!==t&&t.split("-");void 0!==l&&""!==l&&(e.hasClass("has-bg-image")||e.addClass("has-bg-image"),""!==i&&"dark"===i[0]&&(e.hasClass("light")||e.addClass("light")),s.css("background-image",'url("'+l+'")').addClass("bg-image-loaded"))});var u=a("#quote-contact-request");if(u.length>0){if(!a().validate||!a().ajaxSubmit)return console.log("quoteForm: jQuery Form or Form Validate not Defined."),!0;if(u.length>0){var v=u.find("select.required"),g=u.find(".form-results");u.validate({invalidHandler:function(){g.slideUp(400)},submitHandler:function(s){g.slideUp(400),a(s).ajaxSubmit({target:g,dataType:"json",success:function(e){var t="error"===e.result?"alert-danger":"alert-success";g.removeClass("alert-danger alert-success").addClass("alert "+t).html(e.message).slideDown(400),"error"!==e.result&&a(s).clearForm()}})}}),v.on("change",function(){a(this).valid()})}}var m=a(".map-holder");if(m.length>0){new GMaps({div:"#gmap",lat:-12.043333,lng:-77.028333});m.on("click",function(){a(this).children().css("pointer-events","auto")}),m.on("mouseleave",function(){a(this).children().css("pointer-events","none")})}e.append();var p=a("#color-switch");p.length>0&&p.ColorPanel({styleSheet:"#style-css",animateContainer:".site-body",colors:{"#2580FE":"css/style.css","#0A7BBF":"css/style-blue.css","#073788":"css/style-navy.css","#2C44BD":"css/style-royal.css","#EF9535":"css/style-orange.css","#F42225":"css/style-red.css","#AA244E":"css/style-maroon.css","#7DBA2F":"css/style-green.css"}})}(jQuery);

var $win = $(window), $body_m = $('body');
// Get Window Width
	function winwidth () {
		return $win.width();
	}
	var wwCurrent = winwidth();
	$win.on('resize', function () { 
		wwCurrent = winwidth(); 
	});
// Mobile Menu With Tap @iO
	var $nav = $('#mainnav'), $navbar = $(".navbar"); var $navitem = $nav.find('li'), $navlink = $nav.find('a');
	function NavToggle($elem, $state) {
		var elm = $elem, sts = ($state===true||$state==="open"||$state===1) ? true : false;
		if (sts===true) {
			elm.slideDown(600);
		} else {
			elm.slideUp(500);
			elm.find('li.nav-opened').removeClass('nav-opened').children('ul').slideUp(300);
		}
	}
	function NavMobile() {
		if ($win.width() > 767) {
			$nav.removeClass("nav-mobile");
			$nav.find('.has-children').removeClass('nav-opened').removeClass('rollover').children('ul').removeAttr('style');
		} else {
			$nav.addClass("nav-mobile");
		}
	}
	NavMobile(); 
	$win.on('resize', function () { NavMobile(); });
	$navitem.has('ul').addClass('has-children');
	$navitem.on({
		mouseenter: function() {
			$(this).addClass('rollover'); 
		},
		mouseleave: function() {
			$(this).removeClass('rollover'); 
		}
			
	});
	$navlink.on('click touchstart', function(e) {
			var $self = $(this), $selfP = $self.parent(), selfHref = $self.attr('href');
			if (e.type==='click' && wwCurrent > 767) {return true;}
			if ($selfP.hasClass('has-children')) {
				if ($selfP.hasClass('nav-opened')){
					$selfP.removeClass('nav-opened');
					if (selfHref==="#") {
						NavToggle($selfP.children('ul'), 'close');
						return false;
					}
					return true;
				} else {
					$selfP.addClass('nav-opened');
					$selfP.siblings().removeClass('nav-opened');
					NavToggle($selfP.siblings().children('ul'), 'close');
					setTimeout(function() {
						NavToggle($selfP.children('ul'), 'open');
					}, 150);
					return false;
				}
			}
			if (selfHref==="#") { return false; }
	});