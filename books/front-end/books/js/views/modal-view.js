// Generated by CoffeeScript 1.9.3
(function() {
  var extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  define(['views/base/view', 'text!templates/book-modal.hbs'], function(View, template) {
    'use strict';
    var BookModalView;
    return BookModalView = (function(superClass) {
      extend(BookModalView, superClass);

      function BookModalView() {
        return BookModalView.__super__.constructor.apply(this, arguments);
      }

      BookModalView.prototype.template = template;

      template = null;

      BookModalView.prototype.autoRender = true;

      BookModalView.prototype.className = 'book-modal';

      BookModalView.prototype.initialize = function() {
        BookModalView.__super__.initialize.apply(this, arguments);
        return $(this.el).css({
          'width': '100%',
          'height': '100%',
          'background': 'rgba(0, 0, 0, 0.5)',
          'filter': 'alpha(opacity=50)'
        });
      };

      BookModalView.prototype.events = {
        'click .close': 'remove'
      };

      return BookModalView;

    })(View);
  });

}).call(this);
