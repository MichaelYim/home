Template.myModal.created = ->
  Session.set "show-my-modal", false

Template.myModal.helpers 
    showModal: ->
        Session.get "show-my-modal"

Template.myModal.events
  "click .close, click .cancel": ->
    Session.set "show-my-modal", false

  "submit form": (event) ->
    event.preventDefault()
    
    #
    Session.set "show-my-modal", false
