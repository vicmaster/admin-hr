class AdminHr.Views.EmployeesEditView extends Backbone.View

  template: JST['templates/employees/edit']

  #event:

  render: ->
    @$el.html @template model: @model
    @
