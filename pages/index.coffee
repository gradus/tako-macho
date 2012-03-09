doctype 5
comment '[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]'
comment '[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]'
comment '[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]'
comment '[if (gte IE 9)|!(IE)]><!'
html lang: 'en', ->
  comment '<![endif]'
  head ->
    meta charset: 'utf-8'
    title 'Tako Macho'

    meta name: 'viewport', content: 'width=device-width, initial-scale=1, maximum-scale=1'
    
    link rel: 'stylesheet', href: '/static/stylesheets/base.css'
    link rel: 'stylesheet', href: '/static/stylesheets/skeleton.css'
    link rel: 'stylesheet', href: '/static/stylesheets/layout.css'


    comment '[if lt IE 9]>\r\n\t\t<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>\r\n\t<![endif]'

    link rel: 'shortcut icon', href: 'images/favicon.ico'
  body ->
    div '.container', ->
      div '.sixteen.columns', ->
        h1 '.remove-bottom', style: 'margin-top: 40px', 'Tako Macho'
        h5 'Version 0.0.2'
        hr()
      div '.one-third.column', ->
         img height: '300px', class: 'fade_img', src: "/static/images/macho.jpg"
      div '.one-third.column', ->
         img height: '300px', width: '300px', class: 'fade_img', src: "/static/images/tako.jpg"

      div '.one-third.column', ->
         img height: '300px', class: 'fade_img', src: "/static/images/tako2.jpg"

      div '.sixteen.columns', ->
        h5 'A Tako/CoffeeCup Template'
        a href: 'http://github.com/gradus/tako-macho', -> 'Github source'
    script src: 'http://code.jquery.com/jquery-1.7.1.min.js'
    script src: '/static/javascripts/tabs.js'

  coffeescript -> 
      $(document).ready ->
        $('.fade_img').hide()
        $('.fade_img').fadeIn(3000)
