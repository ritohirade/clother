// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import Vue from "vue";
import store from "./store";
import cloneDeep from "lodash.clonedeep";

const storeState = cloneDeep(store.state);

var vms = [];

var options = {};
var requireContext = require.context("./options", false, /\.js$/);
requireContext.keys().forEach(key => {
  let name = key
    .split("/")
    .pop()
    .split(".")
    .shift();
  options[name] = requireContext(key).default;
});

document.addEventListener("turbolinks:load", () => {
  let templates = document.querySelectorAll("[data-vue]");
  for (let el of templates) {
    let vm = new Vue(Object.assign(options[el.dataset.vue], { el, store }));
    vms.push(vm);
  }
});

document.addEventListener("turbolinks:visit", () => {
  for (let vm of vms) {
    vm.$destroy();
  }
  vms = [];
  store.replaceState(cloneDeep(storeState));
});
