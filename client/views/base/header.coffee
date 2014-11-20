# Template.header.events
# 	"click .alphabetical-list-link": ->
#   	# Crater.overlay "profilepop",
#     	# data:
#     	#   nameObject

# Template.header.events
#   "click .style-list-link": ->
#   	console.log "style"
#   	# Crater.overlay "profilepop",

Template.header.events "click .show-alphabetical-modal-button": ->
  Session.set "alphabetical-modal", true

Template.header.events "click .show-style-modal-button": ->
  Session.set "style-modal", true

