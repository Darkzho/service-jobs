// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")



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
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initAutocomplete2 } from '../plugins/init_autocomplete';
import { initFlatpickr } from '../plugins/flatpickr';
import { initStarRating } from '../plugins/init_star_rating';
import { initTyped } from '../plugins/init_typed'
// import { form } from '../plugins/chat_service';
// import { refreshChat } from '../plugins/chat_service';
// import { postMessage } from '../plugins/chat_service';
// import { refreshing } from '../plugins/chat_service';
// import { refreshChat } from '../plugins/chat_box';
// import { form } from '../plugins/chat_box';


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initMapbox();
  initAutocomplete();
  initAutocomplete2();
  initFlatpickr();
  initStarRating();
  initTyped();
  // form();
  // refreshChat();
  // postMessage();
  // refreshing;
  // refreshChat;
  // form;
});

import "controllers"


