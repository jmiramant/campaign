$(document).ready ->

  $(".iosslider.main").iosSlider
    snapToChildren: true
    autoSlide: true
    autoSlideTimer: 2500
    autoSlideTransTimer: 4250
    desktopClickDrag: true
    scrollbarHide: true
    infiniteSlider: true

  $(".iosslider.endorse").iosSlider
    snapToChildren: true
    snapSlideCenter: true
    autoSlide: true
    autoSlideTimer: 0
    autoSlideTransTimer: 3000
    desktopClickDrag: false
    scrollbarHide: true
    infiniteSlider: true
    autoSlideHoverPause: false

  url = location.pathname.replace('/','')
  url = 'home' if url is ''
  $('.nav-primary li#' + url).addClass 'active'

  $('#subscribe input[type="submit"]').click (e) ->
    e.preventDefault()
    name = $(this).siblings('input[type="text"]').val()
    email = $(this).siblings('input[type="email"]').val()
    $.ajax
      url: '/email'
      type: 'post'
      data: {user: {name: name, email: email}}
      success: (data, resp, xhr) ->
        $('#form-signup').fadeOut()
        $('#subscribe').html('<div id="confirm" style="display:none"><p>Thank you for for your involvement!</p></div>')
        $("#confirm").fadeIn()
      error: (data, resp, xhr) ->
        $('#form-signup').text('Error! Please try again')

