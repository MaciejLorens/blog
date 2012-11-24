# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  
  $("div#add_comment").hide()
  
  $("a#add_comment").click ->
    $("div#add_comment").toggle('slow')
    if $("a#add_comment").text() == 'Add comment'
      $("a#add_comment").text('Remove comment')
    else
      $("a#add_comment").text('Add comment')
  