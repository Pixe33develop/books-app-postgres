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
      'click input#is_visible' : 'save'

    save: ->
      @model.attributes.is_visible = $(@el).find('input#is_visible').is(':checked')
      @model.save()