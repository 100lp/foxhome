$ ->
  (($, F) ->
    F.transitions.resizeIn = ->
      previous = F.previous
      current = F.current
      startPos = previous.wrap.stop(true).position()
      endPos = $.extend(
        opacity: 1
      , current.pos)
      startPos.width = previous.wrap.width()
      startPos.height = previous.wrap.height()
      previous.wrap.stop(true).trigger("onReset").remove()
      delete endPos.position

      current.inner.hide()
      current.wrap.css(startPos).animate endPos,
        duration: current.nextSpeed
        easing: current.nextEasing
        step: F.transitions.step
        complete: ->
          F._afterZoomIn()
          current.inner.fadeIn(750)
          return

      return

    return
  ) jQuery, jQuery.fancybox

  $(".fancybox").attr("rel", "gallery").fancybox
    padding: 0
    nextMethod: "resizeIn"
    nextSpeed: 50
    prevMethod: false
    # afterLoad: ->
    #   @title = @title + '<br />' + $(@element).data("caption")
    #   return
    helpers:
      alt:
        type: "inside"
      title:
        type: "inside"

