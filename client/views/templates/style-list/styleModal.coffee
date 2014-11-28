Template.styleModal.created = ->
  Session.set "style-modal", false
 
Template.styleModal.helpers 
  showModal: ->
    Session.get "style-modal"
  filteredBrands: ->
  	Brands.find({style: Session.get("filter-style")})
	currentStyle: ->
		Session.get "filter-style"  

Template.styleModal.events
  "click .close": ->
    Session.set "style-modal", false

  "click .style-filter-button-unit":(e) ->
  	Session.set "filter-style", e.target.textContent
  	console.log Session.get("filter-style")
  	