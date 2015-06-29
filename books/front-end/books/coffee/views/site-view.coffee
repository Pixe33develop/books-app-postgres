define [
  'chaplin'
  'views/base/view'
  'text!templates/site.hbs'
], (Chaplin, View, template) ->
  'use strict'

  class SiteView extends View
    container: 'body'
    id: 'site-container'
    regions:
      content: '#content-container'
      books: '#books-container'
      profiles: '#profiles-container'

    template: template
    template = null

    events:
      'click .library' : 'goLibrary'
      'click .options' : 'goOptions'

    goLibrary: ->
      Chaplin.utils.redirectTo 'library#books'

    goOptions: ->
      Chaplin.utils.redirectTo 'library#profile'