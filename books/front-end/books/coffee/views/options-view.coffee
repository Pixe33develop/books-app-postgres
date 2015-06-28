define [
  'views/base/view'
  'text!templates/options.hbs'
], (View, template) ->
  'use strict'

  class OptionsView extends View
    template: template
    template = null

    autoRender: true
    className: 'options'