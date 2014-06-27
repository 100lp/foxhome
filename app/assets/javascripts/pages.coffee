
# jQuery(document).ready ->
#   setTimeout (->
#     $("body").addClass "first"
      
#     return
#     ), 2000

  # setTimeout (->
  #   $("body").removeClass("first").addClass "second"
  #   return
  #   ), 2000

$ ->
  $(window).load ->
    i = 0
    images = [
      "background_02.jpg"
      "background_03.jpg"
      "background_01.jpg"
    ]
    image = $("b")
    
    #Initial Background image setup
    image.css "background-image", "url(assets/background_01.jpg)"
    
    #Change image at regular intervals
    setInterval (->
      image.fadeOut 2000, ->
        image.css "background-image", "url(assets/" + images[i++] + ")"
        image.fadeIn 2000
        return

      i = 0  if i is images.length
      return
    ), 6000
    return

  if $('body').hasClass('index')
    $('body').prepend("<b></b>")
    $('b').addClass('default')
    return

  # setInterval (->
  #   setTimeout (->
  #     $("#b-after").attr('class', "default")
  #     setTimeout (->
  #       $("#b-after").attr('class', "first")
  #       setTimeout (->
  #         $("#b-after").attr('class', "second")
  #       ), 2000
  #     ), 2000
  #   ), 2000
  # ), 6000

  # setInterval (->
  #   setTimeout (->
  #     if $("body").length   
  #       $("body").attr('class', "first")
  #       if $("body").hasClass("first")
  #        setTimeout (->
  #          $("body").attr('class', "second")
  #          if $("body").hasClass("second")
  #            setTimeout (->
  #              $("body").attr('class', "third")
  #              if $("body").hasClass("second")
  #               setTimeout (->
  #                 $("body").attr('class', "third")
  #                 return
  #                ), 2000
  #              return
  #            ), 2000
  #          return
  #        ), 2000
  #     return
  #   ), 2000
  # ), 4000

  # setInterval (->
  #   setTimeout (->
  #     setTimeout (->
  #       setTimeout (->
  #         console.log "3"
  #       ), 300
  #       console.log "1"
  #     ), 300

  #   console.log("2")
  #   ), 300
  # ), 1000

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