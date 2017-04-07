// $(document).ready(function() {

//   function initAutocomplite () {
//     $('.chips-autocomplete').material_chip({
//       data: userTags,
//       autocompleteOptions: {
//         data: [{
//           'Apple': null,
//           'Microsoft': null,
//           'Google': null
//         }],
//         limit: Infinity,
//         minLength: 1
//       }
//     });
//   }

//   initAutocomplite();

//    var chips = $('#profile_tag_list').val();
//    console.log(chips);
//    chip = chips.split(" ");
//     console.log(chip);
//     // $(chip).each(function( x ){
//     //   console.log(x)
//       // ($(".div.chips.chips-autocomplete").append('<div class="chip">' + x + '</div>'))


// // 1. Op het inladen van de pagina waardes uit de verbogen input halen
// // 2. Waardes omvormen tot een array op basis van spaties
// // 3. Voor elk item in de array een chip genereren in .chips
// // <div class="chip">kaas<i class="material-icons close">close</i></div>
// // })



// $('#profile-edit-submit').on('click', function(event){
//   event.preventDefault()
//   // Iets doet
//   var composedString = ""
//   $( ".chips .chip" ).each(function( index ) {
//     composedString = composedString + ($( this ).text().replace("close", "") + " ")
// });
//   $('#profile_tag_list').val(composedString);
//   //
//   // $('#edit_profile_1').submit()
// });
// });
