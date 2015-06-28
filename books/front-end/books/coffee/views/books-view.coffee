define [
  'views/base/collection-view'
  'text!templates/books.hbs'
  'views/book-view'
], (CollectionView, template, BookView) ->
  'use strict'

  class BooksView extends CollectionView
    template: template
    template = null

    autoRender: true
    className: 'books'
    itemView: BookView

