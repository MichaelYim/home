Template.adminList.helpers
  BrandsAll: ->
    Brands.find({},{sort: { letter: 1 }})
