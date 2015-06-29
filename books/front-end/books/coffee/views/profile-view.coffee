define [
  'views/base/view'
  'text!templates/profile.hbs'
], (View, template) ->
  'use strict'

  class ProfileView extends View
    template: template
    template = null

    autoRender: true
    className: 'profile'

    events:
      'click' : 'save'

    save: ->
      @model.attributes.is_visible = !@model.attributes.is_visible
      @render();
      @model.save()