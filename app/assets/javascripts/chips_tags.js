$('.chips').material_chip();
  $('.chips-initial').material_chip({
    data: [{
      tag: 'Apple',
    }, {
      tag: 'Microsoft',
    }, {
      tag: 'Google',
    }],
  });
  $('.chips-placeholder').material_chip({
    placeholder: 'Enter a tag',
    secondaryPlaceholder: '+Tag',
  });
  $('.chips-autocomplete').material_chip({
    autocompleteOptions: {
      data: {
        'Apple': null,
        'Microsoft': null,
        'Google': null
      },
      limit: Infinity,
      minLength: 1
    }
  });
  $('.chips').on('chip.add', function(e, chip){
    // you have the added chip here
  });

  $('.chips').on('chip.delete', function(e, chip){
    // you have the deleted chip here
  });

  $('.chips').on('chip.select', function(e, chip){
    // you have the selected chip here
  });
