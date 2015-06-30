define [
  'views/base/view'
  'text!templates/book.hbs'
  'views/modal-view-factory'
], (View, template, ModalViewFactory) ->
  'use strict'

  class BookView extends View
    template: template
    template = null

    autoRender: true
    className: 'book'

    events: {
      'click .remove-book' : 'removeBook'
      'click' : 'showModalBook'
    }

    removeBook: ->
      @model.destroy()

    saveBook: (book) =>
      @model.set(book)
      @model.save()
      @render()

    showModalBook: ->
      ModalViewFactory.editBook(@saveBook, @model.attributes)