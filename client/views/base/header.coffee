# Template.header.events
# 	"click .alphabetical-list-link": ->
#   	# Crater.overlay "profilepop",
#     	# data:
#     	#   nameObject

# Template.header.events
#   "click .style-list-link": ->
#   	console.log "style"
#   	# Crater.overlay "profilepop",

Template.header.events "click .show-my-modal-button": ->
  Session.set "show-my-modal", true
