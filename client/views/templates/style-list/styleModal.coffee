Template.styleModal.created = ->
  Session.set "style-modal", false

Template.styleModal.helpers 
    showModal: ->
        Session.get "style-modal"

Template.styleModal.events
  "click .close, click .cancel": ->
    Session.set "style-modal", false

  "submit form": (event) ->
    event.preventDefault()
    
    #
    Session.set "style-modal", false
