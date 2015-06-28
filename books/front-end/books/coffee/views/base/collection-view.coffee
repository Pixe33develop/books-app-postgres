define [
  'chaplin',
  'views/base/view'
], (Chaplin, View) ->
  'use strict'

  class CollectionView extends Chaplin.CollectionView
    getTemplateFunction: View::getTemplateFunction

    renderAll: ->
      this.subviews.forEach (item) ->
        item.render()
