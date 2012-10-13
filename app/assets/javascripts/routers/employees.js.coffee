class AdminHr.Routers.Employees extends Backbone.Router
  routes:
    '' : 'index'

  initialize: ->
    @collection = new AdminHr.Collections.Employees()
    @collection.fetch()

  index: ->
    view = new AdminHr.Views.EmployeesIndex collection: @collection
    $('#container-app').html view.render().el
