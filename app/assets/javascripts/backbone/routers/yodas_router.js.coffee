class Ghostwriter.Routers.YodasRouter extends Backbone.Router
  initialize: (options) ->
    @yodas = new Ghostwriter.Collections.YodasCollection()
    @yodas.reset options.yodas

  routes:
    "new"      : "newYoda"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newYoda: ->
    @view = new Ghostwriter.Views.Yodas.NewView(collection: @yodas)
    $("#yodas").html(@view.render().el)

  index: ->
    @view = new Ghostwriter.Views.Yodas.IndexView(yodas: @yodas)
    $("#yodas").html(@view.render().el)

  show: (id) ->
    yoda = @yodas.get(id)

    @view = new Ghostwriter.Views.Yodas.ShowView(model: yoda)
    $("#yodas").html(@view.render().el)

  edit: (id) ->
    yoda = @yodas.get(id)

    @view = new Ghostwriter.Views.Yodas.EditView(model: yoda)
    $("#yodas").html(@view.render().el)
