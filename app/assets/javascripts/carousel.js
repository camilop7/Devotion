
document.addEventListener('DOMContentLoaded', function() {
  var carouselElement = document.getElementById('carouselExampleCaptions');
  var carousel = new bootstrap.Carousel(carouselElement, {
    interval: 5000, // Set the interval (in milliseconds) between slides
    pause: 'hover', // Pause the carousel on hover
    wrap: true // Allow continuous looping of slides
  });
});
