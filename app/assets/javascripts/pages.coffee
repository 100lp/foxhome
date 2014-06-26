jQuery(document).ready ->
  $("h1").text "test to go?"
  return


jQuery(document).ready ->
  setTimeout (->
    $("body").addClass "frame1"
    return
  ), 2000
  setTimeout (->
    $("body").addClass "frame2"
    return
  ), 4000
  return

$ ->
  return unless $("#links").length
  
  document.getElementById("links").onclick = (event) ->
    controlsClass: 'blueimp-gallery-controls'
    toggleControlsOnReturn: false
    event = event or window.event
    target = event.target or event.srcElement
    link = (if target.src then target.parentNode else target)
    options =
      index: link
      event: event

    links = @getElementsByTagName("a")
    blueimp.Gallery links, options
    return