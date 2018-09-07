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
});
