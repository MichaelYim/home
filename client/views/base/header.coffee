Template.header.events
	"click .show-style-modal-button": ->
		Session.set "alphabetical-modal", false
		Session.set "style-modal", true

Template.header.events
	"click .show-alphabetical-modal-button": ->
		Session.set "style-modal", false
		Session.set "alphabetical-modal", true

Template.header.events
	"click .360-link": ->
		Session.set "style-modal", false
		Session.set "alphabetical-modal", false

# Things that need to happen whenever a header link is clicked
Template.header.events
	"click .header-links": ->
		Session.set "filter-letter", "All"
		Session.set "filter-style", "All"
