# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  navigator.geolocation.getCurrentPosition (position) ->
    $.ajax
      url: "/awkin/setGeoLocation"
      data: "lat=" + position.coords.latitude + "&long=" + position.coords.longitude
