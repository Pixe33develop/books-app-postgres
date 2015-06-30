define [
  'views/base/collection-view'
  'views/profile-view'
], (CollectionView, ProfileView) ->
  'use strict'

  class ProfilesView extends CollectionView
    template = null

    autoRender: true
    className: 'profiles'
    itemView: ProfileView