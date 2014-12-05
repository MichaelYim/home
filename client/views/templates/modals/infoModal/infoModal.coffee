Template.infoModal.created = ->
  Session.set "info-modal", false

Template.infoModal.rendered = ->
  Session.set "info-modal-contact", false

Template.infoModal.helpers
	showModal: -> 
		Session.get "info-modal"

	context: ->
		Brands.findOne(Session.get "info-context")

	contactOpen: ->
		Session.get "info-modal-contact"

Template.infoModal.events
	"click .close": ->
 		Session.set "info-modal", false
 		console.log "running"

	"click .info-modal-contact-us": ->
		console.log Session.get "info-modal-contact"
		if (Session.get "info-modal-contact") == true
			Session.set "info-modal-contact", false
		else
			Session.set "info-modal-contact", true



	

