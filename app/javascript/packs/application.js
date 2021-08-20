// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap';

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import { initAutocomplete } from '../plugins/init_autocomplete';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initAutocomplete();
});

//Here is a comment to that something has changed so that I can repush it to github