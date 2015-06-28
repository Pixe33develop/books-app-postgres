// Generated by CoffeeScript 1.9.3
(function() {
  var extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  define(['models/base/model', 'views/base/modal-view', 'text!templates/book-modal.hbs'], function(Model, ModalView, template) {
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

      BookModalView.prototype.events = {
        'click .close': 'remove',
        'click .accept': 'accept'
      };

      BookModalView.prototype.initialize = function(options) {
        BookModalView.__super__.initialize.apply(this, arguments);
        this.callback = options.callback;
        return this.attributes = {
          title: options.title,
          book: options.bookAttributes
        };
      };

      BookModalView.prototype.accept = function() {
        var book;
        book = {
          name: $(this.el).find('input#name').val(),
          title: $(this.el).find('input#title').val(),
          author: $(this.el).find('input#author').val(),
          description: $(this.el).find('input#description').val(),
          price: $(this.el).find('input#price').val()
        };
        this.callback(book);
        return this.remove();
      };

      BookModalView.prototype.getTemplateData = function() {
        return this.attributes;
      };

      return BookModalView;

    })(ModalView);
  });

}).call(this);
