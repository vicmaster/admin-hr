class AdminHr.Views.EmployeesIndex extends Backbone.View

  initialize: ->
    @collection.on 'reset',@render, @
    @collection.on 'add',@appendEmployee, @
    @collection.on 'remove',@removeOneEmployee, @

  template: JST['templates/employees/index']

  events:
    'submit #new_employee'    : 'createEmployee'
    'click .add-new-employee' : 'hideEmployeeForm'
    'click #complete-list'    : 'hideEmployeeList'
    'click .more'             : 'handleMoreInfo'
    'click .back'             : 'handleBackInfo'
    'blur .last'              : 'handleMoreInfo'
    'keypress .search-query'  : 'search'

  render: ->
    @$el.html @template
    @collection.each @appendEmployee
    @$('.info:first').fadeIn()
    @

  appendEmployee: (employee) =>
    employeeId = if employee.id? employee.id else employee.cid
    elementId = 'employee-' + employeeId
    view = new AdminHr.Views.Employee(model: employee, id: elementId)
    @$('tbody#employees').append view.render().el

  createEmployee: (event) ->
    event.preventDefault()
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

  hideEmployeeForm: (event) ->
    event.preventDefault()
    @$('#new_employee').slideToggle()

  hideEmployeeList: (event) ->
    event.preventDefault()
    @$('#employee-list').slideToggle()

  handleMoreInfo: (event) ->
    event.preventDefault()
    toHide = @$(event.target).parents('.info')
    toShow = toHide.next('.info')
    @hideAndShowInfo toHide, toShow

  handleBackInfo: (event) ->
    event.preventDefault()
    toHide = @$(event.target).parents('.info')
    toShow = toHide.prev('.info')
    @hideAndShowInfo toHide, toShow

  hideAndShowInfo: (toHide, toShow) ->
    toHide.hide()
    toShow.fadeIn()

  search: (event) ->
    if event.keyCode == 13
      key = $('#searchEmployee').val()
      $.ajax
        url:  "/api/employees?keywords=#{key}"
        datatype: 'get'
        cache: false
        success: (data) =>
          @renderResults data


  renderResults: (data) =>
    @$el.html @template
    @collection.reset data
    $('tbody#employees').html ''
    @collection.each @appendEmployee
    @$('.info:first').fadeIn()
    @
