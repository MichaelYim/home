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
    Brands.find({},{sort: { letter: 1 }})

  # One set of filters
  filteredBrands360: ->
  	Brands.find({letter: Session.get("filter-letter"), linkType: "360"},{sort: { letter: 1 }})

  filteredBrandsLookBook: ->
    Brands.find({letter: Session.get("filter-letter"), linkType: "lookBook"},{sort: { letter: 1 }})

  filteredBrandsSite: ->
    Brands.find({letter: Session.get("filter-letter"), linkType: "site"},{sort: { letter: 1 }})
  # end of one set of filters
  currentLetter: ->
  	Session.get "filter-letter"

  #Determines which overlay icon is displayed 
  is360: ->
    this.linkType == "360"

  isLookBook: ->
    this.linkType == "lookBook"

  isSite: ->
    this.linkType == "site"

  isInfo: ->
    this.linkType == "text"

Template.alphabeticalModal.events
  "click .close": ->
    Session.set "alphabetical-modal", false

  "click .alph-filter-button-unit":(e) ->
    Session.set "filter-letter", e.target.textContent
    $('.alph-filter-button-unit').removeClass("filter-active")
    $(e.currentTarget).addClass("filter-active")

