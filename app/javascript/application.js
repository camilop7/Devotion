// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import { Application } from 'stimulus'
import { definitionsFromContext } from 'stimulus/webpack-helpers'
const application = Application.start()
const context = require.context('../controllers', true, /\.js$/)
application.load(definitionsFromContext(context))

import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener('DOMContentLoaded', function() {
  document.addEventListener('click', function(e) {
    if (e.target && e.target.classList.contains('favorite-heart')) {
      e.preventDefault();
      var heartIcon = e.target.querySelector('i');

      fetch('/toggle_favorite', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({ product_id: 123 }) // Replace with actual product ID
      })
      .then(response => response.json())
      .then(data => {
        if (data.favorite) {
          heartIcon.classList.remove('fa-heart-o');
          heartIcon.classList.add('fa-heart');
        } else {
          heartIcon.classList.remove('fa-heart');
          heartIcon.classList.add('fa-heart-o');
        }
      })
      .catch(error => console.error('Error:', error));
    }
  });
});
