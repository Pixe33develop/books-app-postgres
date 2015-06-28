define [
  'views/base/view'
  'text!templates/library.hbs'
  'views/modal-view-factory'
  'handlebars'
], (View, template, BookViewFactory, Handlebars) ->
  'use strict'

  class LibraryView extends View
    template: template
    template = null

    autoRender: true
    className: 'library'

    events: {
      'click .add-book' : 'showModalBook'
    }

    initialize: (options) ->
      super
      @showAttributes = @profilesHash(options.profiles.models)

      Handlebars.registerHelper 'attr-show', (cond) =>
        return cond.fn(@showAttributes)

    addBook: (book) =>
      @subviewsByName['books'].collection.addBook(book)

    showModalBook: ->
      BookViewFactory.createBook(@addBook)

    profilesHash: (profiles) ->
      result = {}
      for profile in profiles
        result[profile.attributes.column_name.toLowerCase()] = profile.attributes.is_visible

      result