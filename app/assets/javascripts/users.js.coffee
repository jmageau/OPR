$(document).ready ->
  unless $("#current_user_type").val() == "Customer"
    $("#user_preferences").parent().hide()
    $("#user_maximum_rental").parent().hide()



  $("#user_type").change ->
    type = $("#user_type").val()
    if type == "Customer"
      $("#user_preferences").parent().show()
      $("#user_maximum_rental").parent().show()
    else
      $("#user_preferences").parent().hide()
      $("#user_maximum_rental").parent().hide()