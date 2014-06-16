$ ->
  jQuery.fn.topLink = (settings) ->
    settings = jQuery.extend(
      min: 1
      fadeSpeed: 200
      ieOffset: 50
    , settings)

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