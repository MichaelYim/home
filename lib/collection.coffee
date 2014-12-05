@Brands = new Meteor.Collection 'brands'

@MyImages = new FS.Collection("myImages",
  stores: [new FS.Store.GridFS("myImages")]
)

# @Brands.allow
#   update: ownsDocument,
#   remove: ownsDocument,
#   insert: ownsDocument
