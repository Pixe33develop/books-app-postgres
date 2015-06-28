define [
  'models/base/model'
  'views/book-modal-view'
], (Model, BookModalView) ->
  'use strict'

  class ModalViewFactory

    @createBook: (callback) ->
      new BookModalView region: 'books', title: 'create', callback: callback

    @editBook: (callback, bookAttributes) ->
      new BookModalView region: 'books', title: 'edit', callback: callback, bookAttributes: bookAttributes