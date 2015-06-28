define [
  'controllers/base/controller'
  'views/library-view'
  'views/books-view'
  'views/profiles-view'
  'views/options-view'
  'models/books'
  'models/profiles'
], (Controller, LibraryView, BooksView, ProfilesView, OptionsView, Books, Profiles) ->
  'use strict'

  class LibraryController extends Controller
    books: ->
      @profiles = new Profiles
      @profiles.fetch().done =>
        @view = new LibraryView region: 'content', profiles: @profiles
        @books = new Books
        @view.subview 'books', new BooksView collection: @books, region: 'books'
        @books.fetch()

      @profiles.fetch()

    profile: ->
      @view = new OptionsView region: 'content'
      @profiles = new Profiles
      @view.subview 'profiles', new ProfilesView collection: @profiles, region: 'profiles'

      @profiles.fetch()