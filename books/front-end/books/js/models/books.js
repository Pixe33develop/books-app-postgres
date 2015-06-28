// Generated by CoffeeScript 1.9.3
(function() {
  var extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  define(['chaplin', 'models/base/collection', 'models/book'], function(Chaplin, Collection, Book) {
    'use strict';
    var Books;
    return Books = (function(superClass) {
      extend(Books, superClass);

      function Books() {
        return Books.__super__.constructor.apply(this, arguments);
      }

      Books.prototype.model = Book;

      Books.prototype.url = '/api/books/';

      Books.prototype.parse = function(data) {
        return data.objects;
      };

      Books.prototype.initialize = function() {
        return Books.__super__.initialize.apply(this, arguments);
      };

      Books.prototype.addBook = function(book) {
        return this.create(book);
      };

      return Books;

    })(Collection);
  });

}).call(this);