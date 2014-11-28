Template.alphabeticalModal.created = ->
  Session.set "alphabetical-modal", false
  Session.set "filter-letter", "All"

Template.alphabeticalModal.helpers 
    showModal: ->
      Session.get "alphabetical-modal"

    showAll: ->
      all = Session.get "filter-letter"
      all == "All"


  # Not-filtered
    filteredBrandsAll: ->
      Brands.find()

# One set of filters
    filteredBrands360: ->
    	Brands.find({letter: Session.get("filter-letter"), linkType: "360"})

    filteredBrandsLookBook: ->
      Brands.find({letter: Session.get("filter-letter"), linkType: "lookBook"})

    filteredBrandsSite: ->
      Brands.find({letter: Session.get("filter-letter"), linkType: "site"})

    filteredBrandsSite: ->
      Brands.find({letter: Session.get("filter-letter"), linkType: "text"})


    currentLetter: ->
    	Session.get "filter-letter"

Template.alphabeticalModal.events
  "click .close": ->
    Session.set "alphabetical-modal", false

  "click .alph-filter-button-unit":(e) ->
  	Session.set "filter-letter", e.target.textContent
  	# Session.set "filter-letter",  