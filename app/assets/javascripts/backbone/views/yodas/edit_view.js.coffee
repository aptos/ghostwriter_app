Ghostwriter.Views.Yodas ||= {}

class Ghostwriter.Views.Yodas.EditView extends Backbone.View
  template : JST["backbone/templates/yodas/edit"]

  events :
    "submit #edit-yoda" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (yoda) =>
        @model = yoda
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
