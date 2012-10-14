class AdminHr.Views.EmployeesEditFormView extends Backbone.View

  #initialize: ->
    #@collection.on 'reset',@render, @
    #@collection.on 'add',@appendEmployee, @
    #@collection.on 'remove',@removeOneEmployee, @

  template: JST['templates/employees/edit_form']

  events:
    'click #save'        : 'saveEditEmployee'
    'click .more'        : 'handleMoreInfo'
    'click .back'        : 'handleBackInfo'
    'blur .last'         : 'handleMoreInfo'
    'click #return-list' : 'returnList'

  render: ->
    @$el.html @template employee: @model
    @

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

  saveEditEmployee: (event) ->
    event.preventDefault()
    form = @$(event.target).parents 'form'
    data = form.serializeObject()
    @model.save data,
      success: (data) =>
        alert 'Employee Updated'
        window.location.href = "/"

  returnList: (event) ->
    event.preventDefault()
    window.location.href = "/"
    #view = new AdminHr.Views.EmployeesIndex
    #$('#container-app').append view.render().el
