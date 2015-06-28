// Generated by CoffeeScript 1.9.3
(function() {
  var extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  define(['chaplin', 'models/base/model'], function(Chaplin, Model) {
    'use strict';
    var Profile;
    return Profile = (function(superClass) {
      extend(Profile, superClass);

      function Profile() {
        return Profile.__super__.constructor.apply(this, arguments);
      }

      return Profile;

    })(Model);
  });

}).call(this);
