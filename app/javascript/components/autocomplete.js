function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var breweryAddress = document.getElementById('brewery_address');

    if (breweryAddress) {
      var autocomplete = new google.maps.places.Autocomplete(breweryAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(breweryAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
