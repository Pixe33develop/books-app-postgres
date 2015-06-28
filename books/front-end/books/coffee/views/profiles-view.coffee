define [
  'views/base/collection-view'
  'text!templates/profiles.hbs'
  'views/profile-view'
], (CollectionView, template, ProfileView) ->
  'use strict'

  class ProfilesView extends CollectionView
    template: template
    template = null

    autoRender: true
    className: 'profiles'
    itemView: ProfileView