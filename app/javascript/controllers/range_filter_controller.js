import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="range-filter"
export default class extends Controller {
  static targets = [ "range" ]
  connect() {
  }

  change(evt) {
    document.querySelector('#range-output').innerText = `${evt.target.value} km`
  }
}
