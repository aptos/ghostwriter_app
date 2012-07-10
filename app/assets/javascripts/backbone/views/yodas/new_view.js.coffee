Ghostwriter.Views.Yodas ||= {}

class Ghostwriter.Views.Yodas.NewView extends Backbone.View
  template: JST["backbone/templates/yodas/new"]

  events:
    "submit #new-yoda": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (yoda) =>
        @model = yoda
        window.location.hash = "/#{@model.id}"

      error: (yoda, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
