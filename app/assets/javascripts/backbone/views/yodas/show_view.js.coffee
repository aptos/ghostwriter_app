Ghostwriter.Views.Yodas ||= {}

class Ghostwriter.Views.Yodas.ShowView extends Backbone.View
  template: JST["backbone/templates/yodas/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
