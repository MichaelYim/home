Template.infoModal.created = ->
  Session.set "info-modal", false
 
Template.infoModal.helpers
	showModal: -> 
		Session.get "info-modal"

	context: ->
		Brands.findOne(Session.get "info-context")


Template.infoModal.events
 "click .close": ->
 		Session.set "info-modal", false
 		console.log "running"
	

