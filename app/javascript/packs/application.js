// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require jquery.ui.all
require jquery.ui.datepicker-en
require jquery.ui.datepicker-es
require jquery.ui.datepicker-fr

$("input.datepicker").each(function(input) {
  $(this).datepicker({
    dateFormat: "yy-mm-dd",
    altField: $(this).next()
  })

  // If you use i18n-js you can set the locale like that
  $(this).datepicker("option", $.datepicker.regional[I18n.currentLocale()]);
})

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { navBar } from '../component/navbar';


document.addEventListener('turbolinks:load', () => {
  if (document.querySelector('.transparent')) {
    navBar()
  }
  // Call your functions here, e.g:
  // initSelect2();
});
