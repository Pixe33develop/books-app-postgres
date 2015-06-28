define [
  'chaplin'
  'models/base/collection'
  'models/book'
], (Chaplin, Collection, Book) ->
  'use strict'

  class Books extends Collection
    model: Book
    url: '/api/books/'

    parse: (data) ->
      return data.objects

    initialize: ->
      super

    addBook: (book) ->
      @create book



