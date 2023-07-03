(function($){
  
    $.fn.quickMenu = function(){
      return this.each(function(){
        var idx = 0;
        var h = [];
        var $wrap = $(this);
        var $menu = $wrap.find(".menu");
        var $btn = $menu.children("li").children("a");
        var $btnScrollTop = $wrap.find(".btn-scroll-top");
        var $section = $(".section");
        var wrapH = $wrap.outerHeight();
        var wrapT = $wrap.position().top;
        var nowScroll = 0;
        var scrolling = true;
  
        function btnActive(num){
          $btn.not($btn.eq(num)).removeClass("on");
          $btn.eq(num).addClass("on");
        }
  
        function moveScroll(num){
          if(scrolling){
            scrolling = false;
            $("html, body").animate({scrollTop : num}, function(){scrolling = true});
          }
        }
            
        btnActive(idx);
  
        $wrap.css({"margin-top": -(wrapH / 2)});
        
        $btn.on("click", function(e){
          e.preventDefault();
          idx = $(this).parent().index();
          var conT = $section.eq(idx).offset().top;
  
          moveScroll(conT);
        });
        
        $btnScrollTop.on("click", function(e){
          e.preventDefault();
          
          moveScroll(0);
        });
        
        $(window).scroll(function(){
          
          nowScroll = $(this).scrollTop();
          
          $section.each(function(idx){
            h[idx] = $(this).offset().top
            
            if(nowScroll >= h[idx]){
              btnActive(idx);
            }
          });
        });
            
      });
    }
    
  })(jQuery);
  
  $(function(){
    $(".box-shortcut").quickMenu();
  });