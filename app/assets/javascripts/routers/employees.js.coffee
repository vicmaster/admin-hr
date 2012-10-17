class AdminHr.Routers.Employees extends Backbone.Router
  routes:
    '' : 'dashboard'
    'crew' : 'manageCrew'
    'employee/edit/:id' : 'editEmployee'

  manageCrew: ->
    @collection = new AdminHr.Collections.Employees()
    @collection.fetch()
    view = new AdminHr.Views.EmployeesIndex collection: @collection
    $('#container-app').html view.render().el

  dashboard: ->
    view = new AdminHr.Views.EmployeeDashboardView
    $('#container-app').html view.render().el

  editEmployee: (employeeId) ->
    employee = new AdminHr.Models.Employee({id: employeeId})

    employee.fetch success: ->
      view = new AdminHr.Views.EmployeesEditFormView model: employee
      $('#container-app').html view.render().el
