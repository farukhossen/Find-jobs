
$(document).ready(function(){


    //=============================================
    $(document).on('click','.category',function(){
        $('.category').removeClass("active");
        $(this).addClass("active");
        var subcategories = $(this).find("ul.sub-categories").clone().show();
        var tab_view = $(this).parent().parent().find(".tab-view-subcategory");
        tab_view.html("");
        tab_view.append(subcategories);
    });
    //=============================================
});
