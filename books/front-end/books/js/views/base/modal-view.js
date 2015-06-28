// Generated by CoffeeScript 1.9.3
(function() {
  var extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  define(['views/base/view'], function(View) {
    'use strict';
    var ModalView;
    return ModalView = (function(superClass) {
      extend(ModalView, superClass);

      function ModalView() {
        return ModalView.__super__.constructor.apply(this, arguments);
      }

      ModalView.prototype.initialize = function() {
        ModalView.__super__.initialize.apply(this, arguments);
        return $(this.el).css({
          'width': '100%',
          'height': '100%',
          'top': '0',
          'left': '0',
          'background': 'rgba(0, 0, 0, 0.5)',
          'filter': 'alpha(opacity=50)',
          'position': 'absolute'
        });
      };

      return ModalView;

    })(View);
  });

}).call(this);
