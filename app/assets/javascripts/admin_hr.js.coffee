window.AdminHr =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  Router: null

  init: ->
    @Router = new AdminHr.Routers.Employees()
    Backbone.history.start()

$.fn.serializeObject = ->
  a = undefined
  o = undefined
  o = {}
  a = @serializeArray()
  $.each a, ->
    _ref = undefined
    @name = @name.replace(/-/g, "_")
    @value = (if (_ref = @value.match(/\d/g))? then _ref.join("") else undefined)  if /phone|ssn/.test(@name)
    @value = @value is "true"  if /true|false/.test(@value)
    if o[@name]
      o[@name] = [o[@name]]  unless o[@name].push
      o[@name].push @value or ""
    else
      o[@name] = @value or ""
  o
