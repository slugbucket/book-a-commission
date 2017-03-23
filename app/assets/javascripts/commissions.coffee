# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#$->
#$("#commission_request_id").change(function() {
#  var req = $("#commission_request_id option:selected").val();
#  $("#commission_commission_type_id").val(req).attr('selected', 'selected');
#})
# Some useful tips from
# http://dandemeyere.com/blog/coffeescript-for-beginners-part-2-of-2
$ ->
  $("#commission_request_id").change ->
    req = $("#commission_request_id option:selected").val()
    ct = $.ajax
           url: "/requests/"+req+".json"
           data: $('#commission_commission_type_id').val()
           success: (data, status, response) ->
             console.log(data)
             $("#commission_commission_type_id").val(data.commission_type_id).attr('selected', 'selected')
           dataType: "json"

