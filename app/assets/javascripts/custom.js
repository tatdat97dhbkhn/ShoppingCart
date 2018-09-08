$(document).ready(function(){
  setTimeout(function(){
    $('#flash').remove();
  }, 3000);
});

$(document).on('turbolinks:load', function() {
  $('#course_image').bind('change', function() {
    var size_in_megabytes = this.files[0].size/1024/1024;
    if (size_in_megabytes > 5) {
      alert("should be less than 5MB");
    }
  });
  // $('#add_cart').click(function(){
  //   var quantity = $('#number_quantity').val();
  //   var product_id = $('#product_id').val();
  //   var flash = confirm("Bạn có muốn thêm vào giỏ hàng?")
  //   if (flash==true){
  //     $.get('/bills/'+product_id+'/'+quantity, function(data){
  //       location.reload();
  //     });
  //   }
  // });
});
