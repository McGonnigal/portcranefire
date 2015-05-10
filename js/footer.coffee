---
---

$ ->

	$("#copyYear").text (new Date).getFullYear()

	eventExpire = new Date(1432870200000)
	nowTime = new Date
	$(".btn-register").each ->
		$(this).removeClass 'disabled' if nowTime < eventExpire