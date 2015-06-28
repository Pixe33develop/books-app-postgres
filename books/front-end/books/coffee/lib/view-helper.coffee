define [
  'handlebars'
  'chaplin'
  'lib/utils'
], (Handlebars, Chaplin, utils) ->
  'use strict'

  Handlebars.registerHelper 'url', (routeName, params..., options) ->
    utils.reverse routeName, params

  null
