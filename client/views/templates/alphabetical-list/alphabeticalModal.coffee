Template.alphabeticalModal.created = ->
  Session.set "alphabetical-modal", false
  Session.set "filter-letter", "A"

Template.alphabeticalModal.helpers 
    showModal: ->
      Session.get "alphabetical-modal"
    filteredBrands: ->
    	Brands.find({letter: Session.get("filter-letter")})

    currentLetter: ->
    	Session.get "filter-letter"

Template.alphabeticalModal.events
  "click .close": ->
    Session.set "alphabetical-modal", false

  "click .alph-filter-button-unit":(e) ->
  	Session.set "filter-letter", e.target.textContent
  	# Session.set "filter-letter",  