define [
  'models/base/model'
  'views/book-modal-view'
], (Model, BookModalView) ->
  'use strict'

  class ModalViewFactory

    @createBook: (callback) ->
      new BookModalView region: 'books', title: 'Create', callback: callback

    @editBook: (callback, bookAttributes) ->
      new BookModalView region: 'books', title: 'Edit', callback: callback, bookAttributes: bookAttributes