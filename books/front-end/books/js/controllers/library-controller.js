// Generated by CoffeeScript 1.9.3
(function() {
  var extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  define(['chaplin', 'controllers/base/controller', 'views/library-view', 'views/books-view', 'views/profiles-view', 'views/options-view', 'models/books', 'models/profiles'], function(Chaplin, Controller, LibraryView, BooksView, ProfilesView, OptionsView, Books, Profiles) {
    'use strict';
    var LibraryController;
    return LibraryController = (function(superClass) {
      extend(LibraryController, superClass);

      function LibraryController() {
        return LibraryController.__super__.constructor.apply(this, arguments);
      }

      LibraryController.prototype.beforeAction = function() {
        LibraryController.__super__.beforeAction.apply(this, arguments);
        return this.reuse('data', {
          compose: function() {
            this.profiles = new Profiles;
            this.profiles.fetch();
            this.books = new Books;
            return this.books.fetch();
          }
        });
      };

      LibraryController.prototype.books = function() {
        var profiles;
        this.view = new LibraryView({
          region: 'content'
        });
        this.view.subview('books', new BooksView({
          collection: this.reuse('data').books,
          region: 'books'
        }));
        profiles = this.reuse('data').profiles;
        if (profiles.models.length > 0) {
          return this.view.applyFilter(profiles.models);
        } else {
          return profiles.fetch().done((function(_this) {
            return function() {
              return _this.view.applyFilter(profiles.models);
            };
          })(this));
        }
      };

      LibraryController.prototype.profile = function() {
        this.view = new OptionsView({
          region: 'content'
        });
        return this.view.subview('profiles', new ProfilesView({
          collection: this.reuse('data').profiles,
          region: 'profiles'
        }));
      };

      LibraryController.prototype.home = function() {
        return Chaplin.utils.redirectTo('library#books');
      };

      return LibraryController;

    })(Controller);
  });

}).call(this);
