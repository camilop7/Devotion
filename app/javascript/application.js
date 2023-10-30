// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

//= require jquery
//= require bootstrap
//= require_tree .

import 'bootstrap/dist/js/bootstrap';

import { Application } from "@hotwired/stimulus"

const application = Application.start()

application.debug = false
window.Stimulus   = application

export { application }

import "controllers/dropdown_controller";
