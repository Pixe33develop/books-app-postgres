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

    initialize: ->
      super
      @showAttributes = {
        name: true
        title: true
        author: true
        description: true
        price: true
      }
      @visible = 5

      Handlebars.registerHelper 'attr-show', (cond) =>
        return cond.fn(@showAttributes)

      Handlebars.registerHelper 'short', (value) =>
        result = value.substring(0, 50 / @visible)
        if result.length < value.length
          result += '...'
        return result

      Handlebars.registerHelper 'width', () =>
        return 670 / @visible + 'px'

    addBook: (book) =>
      @subviewsByName['books'].collection.addBook(book)

    showModalBook: ->
      BookViewFactory.createBook(@addBook)

    applyFilter: (profiles) ->
      if profiles.length > 0
        delete @showAttributes
        @showAttributes = {}
        @visible = 0
        for profile in profiles
          @visible++ unless !profile.attributes.is_visible
          @showAttributes[profile.attributes.column_name.toLowerCase()] = profile.attributes.is_visible

      @render()
      @subviewsByName['books'].render()
      @subviewsByName['books'].collection.reset(@subviewsByName['books'].collection.toJSON())