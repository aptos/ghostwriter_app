Ghostwriter.Views.Yodas ||= {}

class Ghostwriter.Views.Yodas.IndexView extends Backbone.View
  template: JST["backbone/templates/yodas/index"]

  initialize: () ->
    @options.yodas.bind('reset', @addAll)

  addAll: () =>
    @options.yodas.each(@addOne)

  addOne: (yoda) =>
    view = new Ghostwriter.Views.Yodas.YodaView({model : yoda})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(yodas: @options.yodas.toJSON() ))
    @addAll()

    return this
