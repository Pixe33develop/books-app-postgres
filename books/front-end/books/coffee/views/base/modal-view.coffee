define [
  'views/base/view'
], (View) ->
  'use strict'

  class ModalView extends View
    initialize: ->
      super

      $(this.el).css({
        'width': '100%',
        'height': '100%',
        'top' : '0',
        'left' : '0',
        'background': 'rgba(0, 0, 0, 0.5)',
        'filter' : 'alpha(opacity=50)',
        'position' : 'absolute'
      })