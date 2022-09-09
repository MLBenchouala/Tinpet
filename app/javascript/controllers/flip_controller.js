import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flip"
export default class extends Controller {
  static targets = [ 'personIcon', 'dogIcon' ]

  connect() {
    this.flipped = false
    document.body.classList.add('cards-unflipped')
  }

  flip(evt) {
    this.flipped = !this.flipped

    this.instantFlip()
    // this.transitionFlip()
  }

  instantFlip() {
    this.personIconTarget.classList.toggle('d-none', this.flipped)
    this.dogIconTarget.classList.toggle('d-none', !this.flipped)
    document.body.classList.toggle('cards-flipped', this.flipped)
  }

  // transitionFlip() {
  //   document.querySelectorAll('.tinder--card--inner').forEach((card) => {
  //     card.style.transition = 'transform 0.6s'

  //     if (this.flipped) {
  //       card.classList.add('flipped-reverse')
  //       card.classList.remove('flipped')
  //     } else {
  //       card.classList.add('flipped')
  //       card.classList.remove('flipped-reverse')
  //     }

  //     setTimeout(() => {
  //       card.style.transition = ''
  //     }, 600);
  //   })
  // }
}
