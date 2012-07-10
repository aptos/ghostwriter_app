class Ghostwriter.Models.Yoda extends Backbone.Model
  paramRoot: 'yoda'

  defaults:
    title: null
    content: null

class Ghostwriter.Collections.YodasCollection extends Backbone.Collection
  model: Ghostwriter.Models.Yoda
  url: '/yodas'
