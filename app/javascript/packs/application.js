// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap';
import {LogoTogal} from "../components/_header_scroll";

Rails.start()
Turbolinks.start()
ActiveStorage.start()


$(function() {
  const banner_exists = document.querySelector('#banner')
  const header_logo = document.querySelector('#logo');
  const header_links = document.querySelector('#links')
  console.log(banner_exists)
  if (banner_exists) {
    header_logo.classList.add('hidden')
    header_links.classList.add('hidden')
  }
  LogoTogal();
})
