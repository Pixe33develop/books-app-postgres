// Generated by CoffeeScript 1.9.3
(function() {
  var extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  define(['views/base/collection-view', 'text!templates/profiles.hbs', 'views/profile-view'], function(CollectionView, template, ProfileView) {
    'use strict';
    var ProfilesView;
    return ProfilesView = (function(superClass) {
      extend(ProfilesView, superClass);

      function ProfilesView() {
        return ProfilesView.__super__.constructor.apply(this, arguments);
      }

      ProfilesView.prototype.template = template;

      template = null;

      ProfilesView.prototype.autoRender = true;

      ProfilesView.prototype.className = 'profiles';

      ProfilesView.prototype.itemView = ProfileView;

      return ProfilesView;

    })(CollectionView);
  });

}).call(this);
