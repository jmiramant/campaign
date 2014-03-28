$(document).ready ->
  $('#slides').slidesjs -> 
    width: 940
    height: 475
    play: 
      active: true
      effect: "slide"
      interval: 5000
      auto: true
      pauseOnHover: true
      restartDelay: 2500
    navigation: 
          active: false
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
        
