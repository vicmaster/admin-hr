class AdminHr.Routers.Employees extends Backbone.Router
  routes:
    '' : 'dashboard'
    'crew' : 'manageCrew'
    'employee/:id' : 'editEmployee'
  initialize: ->
    @collection = new AdminHr.Collections.Employees()
    @collection.fetch()

  manageCrew: ->
    @collection = new AdminHr.Collections.Employees()
    @collection.fetch()
    view = new AdminHr.Views.EmployeesIndex collection: @collection
    $('#container-app').html view.render().el

  dashboard: ->
    view = new AdminHr.Views.EmployeeDashboardView
    $('#container-app').html view.render().el

  editEmployee: (employeeId) ->
    view = new AdminHr.Views.EmployeesEditView
    $('#container-app').html view.render().el




