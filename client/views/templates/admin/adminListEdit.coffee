Template.adminListEdit.rendered= ->
	#Style and Link dropdowns render with current values
	$("option[value='#{this.data.style}']").attr("selected", "selected")
	$("option[value='#{this.data.linkType}']").attr("selected", "selected")


# {
#     englishCompanyName: "YINQICHENG FURNITURE DEVELOPMENT CO.LTD",
#     chineseCompanyName: "佛山市铟琦诚家具发展有限公司",
#     englishName: "BIAOMA",
#     letter: "B",
#     chineseName: "彪马",
#     style: "Chinese Traditional",
#     linkType: "text",
#     phone: "86-757-23870780",
#     fax: "86-757-23888219",
#     email: "info@yinqicheng.com",
#     website: "www.yinqicheng.com",
#     chineseMainProduct:
#         "沙发
#         客厅家具",
#     englishMainProduct: "SOFA AND BED, FURNITURE",
#     boothNo: "9-2B22b",
#     protoPicture: "BIAOMA.jpg",
#     _id: "MYMwEvwtiA3r5czue"
# }