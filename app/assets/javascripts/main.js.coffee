$(document).ready ->

  $(".iosslider").iosSlider
    snapToChildren: true
    autoSlide: true
    autoSlideTimer: 3000
    scrollbar: true
    scrollbarHide: false
    desktopClickDrag: true
    scrollbarLocation: "bottom"
    scrollbarHeight: "6px"
    scrollbarBackground: "url(_img/some-img.png) repeat 0 0"
    scrollbarBorder: "1px solid #000"
    scrollbarMargin: "0 30px 16px 30px"
    scrollbarOpacity: "0.75"

  $("#blog-modal").fancybox()

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

