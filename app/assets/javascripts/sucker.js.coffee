Lovely ['dom', 'ajax', 'fx'], ($, Ajax)->
  working = false
  window.setInterval ->
    return if working
    working = true
    Ajax.get $('#stream').data('url') + "?" + new Date().getTime(), evalJS: false, complete: ->
      $('#stream').insert(@responseText, 'top').find('div.tweet').shift().hide().show('slide').highlight()
      working = false
  , 4000
