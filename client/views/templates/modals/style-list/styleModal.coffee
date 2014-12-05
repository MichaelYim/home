Template.styleModal.created = ->
  Session.set "style-modal", false
  Session.set "filter-style", "All"

 
Template.styleModal.helpers 

  currentStyle: ->
    Session.get "filter-style" 

  showModal: ->
    Session.get "style-modal"

  showAll: ->
    all = Session.get "filter-style"
    all == "All"

  filteredBrandsAll: ->
  	Brands.find({},{sort: { letter: 1 }} )


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
  filteredBrands360: ->
    Brands.find({style: Session.get("filter-style"), linkType: "360"},{sort: { letter: 1 }})

  filteredBrandsLookBook: ->
    Brands.find({style: Session.get("filter-style"), linkType: "lookBook"},{sort: { letter: 1 }})

  filteredBrandsSite: ->
    Brands.find({style: Session.get("filter-style"), linkType: "site"},{sort: { letter: 1 }})

  filteredBrandsInfo: ->
    Brands.find({style: Session.get("filter-style"), linkType: "text"},{sort: { letter: 1 }})

# end of one set of filters
Template.styleModal.events
  "click .close": ->
    Session.set "style-modal", false

  "click .site-logo": ->
    Session.set "style-modal", false
    console.log "running"

  "click .style-filter-button-unit":(e) ->
    Session.set "filter-style", e.target.textContent
    console.log Session.get("filter-style")
    $('.style-filter-button-unit').removeClass("filter-active")
    $(e.currentTarget).addClass("filter-active")
    Session.set "info-modal", false

  "click .info-listing":(e) ->
    console.log "hihi"
    Session.set "info-context", this._id
    Session.set "info-modal", true



  	