define [
  'handlebars'
  'chaplin'
], (Handlebars, Chaplin) ->
  'use strict'

  class View extends Chaplin.View
    getTemplateFunction: ->
      template = @template

      if typeof template is 'string'
        templateFunc = Handlebars.compile template
        @constructor::template = templateFunc
      else
        templateFunc = template

      templateFunc
