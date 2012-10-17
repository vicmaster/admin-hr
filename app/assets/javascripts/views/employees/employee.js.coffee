class AdminHr.Views.Employee extends Backbone.View

  tagName: 'tr'

  events:
    'click #delete' : 'deleteEmployee'
    #'click #edit'   : 'editEmployee'

  template: JST['templates/employees/employee']

  render: ->
    @$el.html @template employee: @model
    @

  deleteEmployee: (event)->
    event.preventDefault()
    if confirm('Are you sure to delete?')
      @model.destroy()

  editEmployee: (event)->
    event.preventDefault()
    view = new AdminHr.Views.EmployeesEditFormView model: @model
    $('#container-app').html view.render().el
