// Generated by CoffeeScript 1.9.3
(function() {
  var extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  define(['controllers/base/controller', 'models/hello-world', 'views/hello-world-view'], function(Controller, HelloWorld, HelloWorldView) {
    'use strict';
    var HelloController;
    return HelloController = (function(superClass) {
      extend(HelloController, superClass);

      function HelloController() {
        return HelloController.__super__.constructor.apply(this, arguments);
      }

      HelloController.prototype.show = function(params) {
        this.model = new HelloWorld();
        return this.view = new HelloWorldView({
          model: this.model,
          region: 'main'
        });
      };

      return HelloController;

    })(Controller);
  });

}).call(this);
