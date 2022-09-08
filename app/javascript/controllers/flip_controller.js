import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flip"
export default class extends Controller {
  connect() {
    this.cards = document.querySelectorAll('.tinder--card--inner')
  }

  flip(evt) {
    this.cards.forEach((card) => {
      card.style.transition = 'transform 0.6s'
      card.classList.toggle('flipped')
      setTimeout(() => {
        card.style.transition = ''
      }, 600);
    })
  }
}
