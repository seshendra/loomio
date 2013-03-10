# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  if $("body.group_requests.create").length > 0
    $("#donation-option").click((e) ->
      $("#donation-options").removeClass('hidden')
      $("#group_request_contribution_amount").val(50)
    )
$ ->
  if $("body.group_requests.create").length > 0
    $("#subscription-option").click((e) ->
      $("#donation-options").addClass('hidden')
      $("#group_request_contribution_amount").val(5)
      $("#group_request_contribution_frequency").val("monthly")
    )
