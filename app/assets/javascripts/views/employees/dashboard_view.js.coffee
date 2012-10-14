class AdminHr.Views.EmployeeDashboardView extends Backbone.View

  template: JST['templates/employees/dashboard']

  render: ->
    @$el.html @template employee: @model
    @
