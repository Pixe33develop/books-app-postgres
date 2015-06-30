define [
  'views/base/collection-view'
  'views/book-view'
], (CollectionView, BookView) ->
  'use strict'

  class BooksView extends CollectionView
    template = null

    autoRender: true
    className: 'books'
    itemView: BookView

    renderAll: ->
      for book in @subviews
        book.render()



