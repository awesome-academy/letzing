$(document).ready(function(){
  $("#signUp").click(() => {
    $("#sign-ani-container").addClass("right-panel-active");
  });
  $("#signIn").click(() => {
    $("#sign-ani-container").removeClass("right-panel-active");
  });
});
