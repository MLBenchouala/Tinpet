import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flip"
export default class extends Controller {
  static targets = [ 'personIcon', 'dogIcon' ]
  connect() {
    this.cards = document.querySelectorAll('.tinder--card--inner')
    this.flipped = false
  }

  flip(evt) {
    this.flipped = !this.flipped
    this.personIconTarget.classList.toggle('d-none', this.flipped)
    this.dogIconTarget.classList.toggle('d-none', !this.flipped)
    this.cards.forEach((card) => {
      card.style.transition = 'transform 0.6s'
      card.classList.toggle('flipped')
      setTimeout(() => {
        card.style.transition = ''
      }, 600);
    })
  }
}
