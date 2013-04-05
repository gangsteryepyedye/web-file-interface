WebFileInterface.ApplicationController = Ember.Controller.extend
  //File system setup (experimental)
  window.requestFileSystem  = window.requestFileSystem || window.webkitRequestFileSystem;

  window.requestFileSystem(window.TEMPORARY, 5*1024*1024, initFS, errorHandler);

  initFS: (fs) -> alert("Welcome to Filesystem! It's showtime :)")

  errorHandler: -> console.log('An error occured')

  entries: []

  addPath: -> 
    @entries.pushObject name: @get('newFilePath')
    @set('newFilePath', "")
