// Generated by CoffeeScript 1.9.3
(function() {
  define(['models/base/model', 'views/book-modal-view'], function(Model, BookModalView) {
    'use strict';
    var ModalViewFactory;
    return ModalViewFactory = (function() {
      function ModalViewFactory() {}

      ModalViewFactory.createBook = function(callback) {
        return new BookModalView({
          region: 'books',
          title: 'create',
          callback: callback
        });
      };

      ModalViewFactory.editBook = function(callback, bookAttributes) {
        return new BookModalView({
          region: 'books',
          title: 'edit',
          callback: callback,
          bookAttributes: bookAttributes
        });
      };

      return ModalViewFactory;

    })();
  });

}).call(this);
