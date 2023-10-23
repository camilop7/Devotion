import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["heartIcon"];

  toggleFavorite() {
    const heartIcon = this.heartIconTarget;

    // Send AJAX request to /toggle_favorite endpoint
    fetch('/toggle_favorite', {
      method: 'POST',
      body: JSON.stringify({ product_id: 123 }), // Replace with actual product ID
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      }
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
}
