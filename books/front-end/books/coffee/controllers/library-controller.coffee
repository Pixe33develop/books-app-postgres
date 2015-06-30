define [
  'chaplin'
  'controllers/base/controller'
  'views/library-view'
  'views/books-view'
  'views/profiles-view'
  'views/options-view'
  'models/books'
  'models/profiles'
], (Chaplin, Controller, LibraryView, BooksView, ProfilesView, OptionsView, Books, Profiles) ->
  'use strict'

  class LibraryController extends Controller
    beforeAction: ->
      super
      @reuse 'data',
        compose: ->
          @profiles = new Profiles
          @profiles.fetch()
          @books = new Books
          @books.fetch()

    books: ->
      @view = new LibraryView region: 'content'
      @view.subview 'books', new BooksView collection: @reuse('data').books, region: 'books'

      profiles = @reuse('data').profiles
      if profiles.models.length > 0
        @view.applyFilter profiles.models
      else
        profiles.fetch().done => @view.applyFilter profiles.models


    profile: ->
      @view = new OptionsView region: 'content'
      @view.subview 'profiles', new ProfilesView collection: @reuse('data').profiles, region: 'profiles'


    home: ->
      Chaplin.utils.redirectTo 'library#books'