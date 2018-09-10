$(document).on('turbolinks:load', function(){
  setTimeout(function(){
    $('#flash').remove();
  }, 3000);

  $('.payment_method_bacs').click(function(){
    $('#bacs').css("display","block");
    $('#cheque').css("display","none");
    $.get('/update_payment/'+1,function(data){
      
    });
  });

  $('.payment_method_cheque').click(function(){
    $('#bacs').css("display","none");
    $('#cheque').css("display","block");
    $.get('/update_payment/'+0,function(data){
      
    });
  });
});

$(document).on('turbolinks:load', function() {
  $('#course_image').bind('change', function() {
    var size_in_megabytes = this.files[0].size/1024/1024;
    if (size_in_megabytes > 5) {
      alert("should be less than 5MB");
    }
  });
});

