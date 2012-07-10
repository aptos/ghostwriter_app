Ghostwriter.Views.Yodas ||= {}

class Ghostwriter.Views.Yodas.YodaView extends Backbone.View
  template: JST["backbone/templates/yodas/yoda"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
