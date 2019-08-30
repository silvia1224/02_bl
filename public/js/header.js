$('[data-trigger=down]').parent().mouseover(function(){
    $(this).children(':last-child').show();
}).mouseout(function(){
    $(this).children(':last-child').hide();
}).children(':last-child').hide();