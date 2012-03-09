doctype 5
comment '[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]'
comment '[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]'
comment '[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]'
comment '[if (gte IE 9)|!(IE)]><!'
html lang: 'en', ->
  comment '<![endif]'
  head ->
    meta charset: 'utf-8'
    title 'Macho Tako'
    meta name: 'viewport', content: 'width=device-width, initial-scale=1, maximum-scale=1'
    link rel: 'stylesheet', href: '/static/stylesheets/app.css'
    link rel: 'stylesheet', href: '/static/stylesheets/base.css'
    link rel: 'stylesheet', href: '/static/stylesheets/skeleton.css'
    link rel: 'stylesheet', href: '/static/stylesheets/layout.css'

    comment '[if lt IE 9]>\r\n\t\t<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>\r\n\t<![endif]'

    link rel: 'shortcut icon', href: 'images/favicon.ico'
  body ->

    div '.container', ->
      ul '.tabs', ->
        li ->
          a href: '/', 'Tako'
        li ->
          a '.active', href: '/macho', 'Macho'

      div '.sixteen.columns', ->
        h1 '.remove-bottom', style: 'margin-top: 40px', 'Tako Macho'
        h5 'Version 0.0.3'
        hr()
      div '.one-third.column', ->
         img height: '300px',width: '280px', class: 'fade_img', src: "/static/images/macho.jpg"
      div '.one-third.column', ->
         img height: '300px', width: '280px', class: 'fade_macho_men', src: "/static/images/macho_man.gif"
      div '.one-third.column', ->
         img height: '300px', width: '280px', class: 'fade_img3', src: "/static/images/tako2.jpg"

      div '.sixteen.columns', ->
        a '.button.left', href: 'http://github.com/gradus/tako-macho', -> 'View Source Code on Github'
        div '.right', ->
          h5 'A ', ->
            text 'A '
            a href: 'https://github.com/mikeal/tako', -> 'Tako' 
            text ' / '
            a href: 'https://github.com/gradus/coffeecup', -> 'CoffeeCup'
            text ' Boilerplate'

    script src: 'http://code.jquery.com/jquery-1.7.1.min.js'
    script src: '/static/javascripts/tabs.js'

  coffeescript ->
      $(document).ready ->
        $('.fade_img').hide()
        $('.fade_img').fadeIn(2000)
        $('.fade_macho_men').hide()
        $('.fade_macho_men').fadeIn(10000)
        $('.fade_img3').hide()
        $('.fade_img3').fadeIn(3000)

