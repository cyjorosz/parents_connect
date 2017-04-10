$(document).ready(function() {
  var data = ($('#event_street_name').length ? ($('#event_street_name').get(0)) : ($('#profile_street_name').get(0)))

  if (data) {
    var autocomplete = new google.maps.places.Autocomplete(data, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(data, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

function onPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  console.log(components);

  if ($('#event_street_name').length) {
    $('#event_street_name').trigger('blur').val(components.address);
    $('#event_street_number').val(components.street_number);
    $('#event_zipcode').val(components.zip_code);
    $('#event_city').val(components.city);
    if (components.country_code) {
      $('#event_country').val(components.country_code).material_select();
    }


    $('#event_zipcode').trigger("focus");
    $('#event_city').trigger("focus");
  }


  if ($('#profile_street_name').length) {
   $('#profile_street_name').trigger('blur').val(components.address);
   $('#profile_street_number').val(components.street_number);
   $('#profile_zipcode').val(components.zip_code);
   $('#profile_city').val(components.city);
   if (components.country_code) {
     $('#profile_country').val(components.country_code).material_select();
   }

    $('#profile_zipcode').trigger("focus");
    $('#profile_city').trigger("focus");

 }
}

function getAddressComponents(place) {
  // If you want lat/lng, you can look at:
  // - place.geometry.location.lat()
  // - place.geometry.location.lng()

  var street_number = null;
  var route = null;
  var zip_code = null;
  var city = null;
  var country_code = null;
  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) {
      var type = component.types[j];
      if (type == 'street_number') {
        street_number = component.long_name;
      } else if (type == 'route') {
        route = component.long_name;
      } else if (type == 'postal_code') {
        zip_code = component.long_name;
      } else if (type == 'locality') {
        city = component.long_name;
      } else if (type == 'country') {
        country_code = component.short_name;
      }
    }
  }

  return {
    address: street_number == null ? route : (street_number + ' ' + route),
    zip_code: zip_code,
    city: city,
    country_code: country_code
  };
}
