define [
  'models/base/model'
  'views/base/modal-view'
  'text!templates/book-modal.hbs'
], (Model, ModalView, template) ->
  'use strict'

  class BookModalView extends ModalView
    template: template
    template = null

    autoRender: true
    className: 'book-modal'

    events:
      'click .close' : 'remove'
      'click .accept' : 'accept'
      'keydown input#price' : 'checkPrice'
      'paste input#price' : -> false
      'keydown' : 'inputs'

    initialize: (options)->
      super
      @callback = options.callback
      @attributes =
        title: options.title
        book: options.bookAttributes

    accept: ->
      book = {
        name: $(@el).find('input#name').val()
        title: $(@el).find('input#title').val()
        author: $(@el).find('input#author').val()
        description: $(@el).find('textarea#description').val()
        price: $(@el).find('input#price').val()
      }

      return unless book.name.length > 0 && book.author.length > 0 && book.price.length > 0
      @callback(book)
      @remove()

    inputs: (event) ->
      if (event.keyCode == 13)
        @accept()
        return

      if (event.keyCode == 27)
        @remove()
        return

    checkPrice: (event) ->
      c = event.keyCode
      if c==46 || c==8 || c==9 || c==27 || c==110
        return true

      return false unless (c >= 48 && c <= 57) || (c >= 96 && c <= 105)
      return false unless $(@el).find('input#price').val().length <= 5


    getTemplateData: ->
      @attributes
