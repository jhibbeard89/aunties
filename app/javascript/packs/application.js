// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
require("turbolinks").start()
Rails.start()
ActiveStorage.start()
// import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
// Bootstrap
import 'bootstrap';
// Mapbox
import { initMapbox } from '../plugins/init_mapbox';
import 'mapbox-gl/dist/mapbox-gl.css';
// Search Function
import { initAutocomplete } from '../plugins/init_autocomplete';
// Local Imports
import {LogoTogal} from "../plugins/init_header_scroll";
import {background_page_height} from "../plugins/init_background_height";

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initAutocomplete();
  initMapbox();

  background_page_height()



  LogoTogal();
});
