Template.lookModal.created = ->
  Session.set "look-modal", false
  Session.set "filter-look", "All"

 
Template.lookModal.helpers 

  currentLook: ->
    Session.get "filter-look" 

  showModal: ->
    Session.get "look-modal"

  showAll: ->
    all = Session.get "filter-look"
    all == "All"

  filteredBrandsAll: ->
  	Brands.find({linkType: "lookBook"},{sort: { letter: 1 }} )


  #Determines which overlay icon is displayed
  is360: ->
    this.linkType == "360"

  isLookBook: ->
    this.linkType == "lookBook"

  isSite: ->
    this.linkType == "site"

  isInfo: ->
    this.linkType == "text"



# One set of filters
  filteredBrandsLookBook: ->
    Brands.find({letter: Session.get("filter-look"), linkType: "lookBook"},{sort: { letter: 1 }})

# end of one set of filters
Template.lookModal.events
  "click .close": ->
    Session.set "look-modal", false

  "click .alph-filter-button-unit":(e) ->
    Session.set "filter-look", e.target.textContent
    console.log Session.get("filter-look")
    $('.alph-filter-button-unit').removeClass("filter-active")
    $(e.currentTarget).addClass("filter-active")

  	