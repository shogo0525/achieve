ready = ->
    $(window).scroll ->
        element = $("#page-top-btn")
        visible = element.is(":visible")
        height = $(window).scrollTop()
        if height > 200
            #ボタンを表示
            element.fadeIn() if !visible
        else
            #ボタンを非表示
            element.fadeOut()
            
        $(document).on "click", "#move-page-top", ->
            $("html, body").animate({scrollTop:0}, "slow")
    
$(document).ready(ready)
$(document).on('page:load', ready)



        