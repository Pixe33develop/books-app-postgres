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
        description: $(@el).find('input#description').val()
        price: $(@el).find('input#price').val()
      }
      @callback(book)
      @remove()

    getTemplateData: ->
      @attributes
