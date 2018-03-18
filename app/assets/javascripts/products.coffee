# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.products = App.cable.subscriptions.create "ProductsChannel",
	conntected: ->
		# Called when subscription is ready for use on the server

	disconnected: ->
		# Called when subscription has been terminated by the server

	received: (data) ->
		$(".store #main").html(data.html)