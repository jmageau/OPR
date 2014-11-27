$(document).ready ->
  $("input").bind "keyup change", ->
    type = $("#type").val().toLowerCase()
    location = $("#location").val().toLowerCase()
    bedrooms = $("#bedrooms").val()
    bathrooms = $("#bathrooms").val()
    rooms = $("#rooms").val()
    minRent = parseFloat($("#minRent").val())
    maxRent = parseFloat($("#maxRent").val())

    matchingRows = $("tr:not(:first)")
    matchingRows = matchingRows.filter ->
      $(".type",this).text().toLowerCase().indexOf(type) != -1
    matchingRows = matchingRows.filter ->
      $(".location",this).text().toLowerCase().indexOf(location) != -1
    matchingRows = matchingRows.filter ->
      $(".bedrooms",this).text().toLowerCase().indexOf(bedrooms) != -1
    matchingRows = matchingRows.filter ->
      $(".bathrooms",this).text().toLowerCase().indexOf(bathrooms) != -1
    matchingRows = matchingRows.filter ->
      $(".rooms",this).text().toLowerCase().indexOf(rooms) != -1
    matchingRows = matchingRows.filter ->
      (parseFloat($(".rent",this).text()) >= minRent) || isNaN(minRent)
    matchingRows = matchingRows.filter ->
      (parseFloat($(".rent",this).text()) <= maxRent) || isNaN(maxRent)

    tableRows = $("tr:not(:first)")
    tableRows.hide()
    matchingRows.show()