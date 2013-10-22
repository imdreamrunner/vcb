$(document).ready ->
  $("#category-button").mouseenter ->
    addMouseLeaveHandler = ->
      $("#category-list").mouseleave ->
        $("#category-list").hide(300)
    $("#category-list").show(300, addMouseLeaveHandler)