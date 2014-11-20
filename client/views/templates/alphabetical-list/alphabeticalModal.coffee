Template.alphabeticalModal.created = ->
  Session.set "alphabetical-modal", false

Template.alphabeticalModal.helpers 
    showModal: ->
        Session.get "alphabetical-modal"

Template.alphabeticalModal.events
  "click .close, click .cancel": ->
    Session.set "alphabetical-modal", false

  "submit form": (event) ->
    event.preventDefault()
    
    #
    Session.set "alphabetical-modal", false
