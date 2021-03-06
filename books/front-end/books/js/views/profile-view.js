// Generated by CoffeeScript 1.9.3
(function() {
  var extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  define(['views/base/view', 'text!templates/profile.hbs'], function(View, template) {
    'use strict';
    var ProfileView;
    return ProfileView = (function(superClass) {
      extend(ProfileView, superClass);

      function ProfileView() {
        return ProfileView.__super__.constructor.apply(this, arguments);
      }

      ProfileView.prototype.template = template;

      template = null;

      ProfileView.prototype.autoRender = true;

      ProfileView.prototype.className = 'profile';

      ProfileView.prototype.events = {
        'click': 'save'
      };

      ProfileView.prototype.save = function() {
        this.model.attributes.is_visible = !this.model.attributes.is_visible;
        this.render();
        return this.model.save();
      };

      return ProfileView;

    })(View);
  });

}).call(this);
