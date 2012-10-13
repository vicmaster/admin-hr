class AdminHr.Views.EmployeesIndex extends Backbone.View

  initialize: ->
    @collection.on 'reset',@render, @
    @collection.on 'add',@appendEmployee, @
    @collection.on 'remove',@removeOneEmployee, @

  template: JST['templates/employees/index']

  events:
    'submit #new_employee': 'createEmployee'

  render: ->
    @$el.html @template()
    @collection.each @appendEmployee
    @

  appendEmployee: (employee) ->
    employeeId = if employee.id? employee.id else employee.cid
    elementId = 'employee-' + employeeId
    view = new AdminHr.Views.Employee(model: employee, id: elementId)
    $('tbody#employees').append view.render().el

  createEmployee: (e) ->
    e.preventDefault()
    data = @$('form').serializeObject()

    @collection.create data,
      wait: true
      success: -> $('#new_employee')[0].reset()
      error: @handleError

  handleError: (employee, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{messages}" for message in messages

  removeOneEmployee: (e) ->
      employeeId = if e.id? e.id else e.cid
      @$el.find('#employee-' + employeeId).remove()
