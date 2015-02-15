$ ->
  $(".js-scroll-to").click (e) ->
    e.preventDefault()
    $("html,body").animate {
      scrollTop: $($(@).attr("href")).offset().top - 20
    }, 500
