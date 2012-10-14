class AdminHr.Routers.Employees extends Backbone.Router
  routes:
    '' : 'dashboard'
    'crew' : 'manageCrew'

  initialize: ->
    @collection = new AdminHr.Collections.Employees()
    @collection.fetch()

  manageCrew: ->
    view = new AdminHr.Views.EmployeesIndex collection: @collection
    $('#container-app').html view.render().el

  dashboard: ->
    view = new AdminHr.Views.EmployeeDashboardView
    $('#container-app').html view.render().el


