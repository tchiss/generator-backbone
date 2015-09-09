#/*global require*/
'use strict'

require.config
  shim: {
<% if (sassBootstrap) { -%>
    bootstrap:
      deps: ['jquery'],
      exports: 'jquery'
<% } -%>
<% if (templateFramework === 'handlebars') { -%>
    handlebars:
      exports: 'Handlebars'
<% } -%>
  }
  paths:
    jquery: '../bower_components/jquery/dist/jquery'
    backbone: '../bower_components/backbone/backbone'
    underscore: '../bower_components/lodash/dist/lodash'bootstrap
<% if (sassBootstrap) { -%>
    bootstrap: '../bower_components/bootstrap-sass/assets/javascripts/bootstrap'
<% } -%>
<% if (templateFramework === 'handlebars') { -%>
    handlebars: '../bower_components/handlebars/handlebars'
<% } -%>

require [
  'backbone'
], (Backbone) ->
  Backbone.history.start()
