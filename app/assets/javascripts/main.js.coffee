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