define [
  'chaplin'
  'models/base/collection'
  'models/profile'
], (Chaplin, Collection, Profile) ->
  'use strict'

  class Profiles extends Collection
    model: Profile
    url: '/api/profiles/'

    parse: (data) ->
      return data.objects

    initialize: ->
      super