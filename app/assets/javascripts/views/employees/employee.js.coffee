class AdminHr.Views.Employee extends Backbone.View

  tagName: 'tr'

  events:
      'click #delete' : 'deleteEmployee'

  template: JST['templates/employees/employee']

  render: ->
    @$el.html @template employee: @model
    @

  deleteEmployee: (e)->
      e.preventDefault()
      if confirm('Are you sure to delete?')
        @model.destroy()
