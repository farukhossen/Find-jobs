$(document).ready(function(){

    $(document).on('click','.add_fields',function(evt){
        var time = new Date().getTime();
        var regexp = new RegExp($(this).data('id'),'g');
        $(this).before($(this).data('fields').replace(regexp,time));
        evt.preventDefault();
    });
    $(document).on('click','.remove_fields',function(evt){
        $(this).parent().hide();
        $(this).parent().find("input[type='hidden']").val(1);
        evt.preventDefault();
    });
});
