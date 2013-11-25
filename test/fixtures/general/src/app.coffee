Middleware = require '../../../../src'

window.middleware = middleware = new Middleware

middleware.on 'url:change', (pathname)->
  $('#location').val pathname

$(document).ready ->
  $('#location').val middleware.pathname()

  $( 'a[href*="/"]' ).each ( index, item ) =>
    $( item ).click ( event ) ->
      middleware.push $( event.delegateTarget ).attr 'href'
      return off