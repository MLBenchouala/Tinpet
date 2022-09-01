import { Controller } from "@hotwired/stimulus"
import Hammer from 'hammerjs'

export default class extends Controller {
  static targets = [ "card", "nopeBtn", "likeBtn" ]
  static values = { ids: Array, currentId: Number }

  connect() {
    this.csrf = document.querySelector("[name=csrf-token]").content
    console.log(this.csrf)

    this._initCards();
    this._initSwipe();

    this.nopeBtnTarget.addEventListener('click', (e) => {
      this._createButtonListener(false, e)
    });

    this.likeBtnTarget.addEventListener('click', (e) => {
      this._createButtonListener(true, e)
    });

    // this.likeEvent = new Event('liked');
    // this.dislikeEvent = new Event('disliked');
    this._updateCurentId()
  }

  liked(id) {
    this._updateCurentId()

    console.log('hello ', this.currentId, id)

    const options = {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-TOKEN": this.csrf }
    }

    fetch(`/pets/${this.currentId}/swipes?liked=true`, options)
      .then(response => response.json())
      .then(data => console.log(data))

    this._updateCurentId()
  }

  disliked(elementId) {
    this._updateCurentId()

    console.log('bye',this.currentId)
    const options = {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-TOKEN": this.csrf }
    }

    fetch(`/pets/${this.currentId}/swipes?liked=false`, options)
      .then(response => response.json())
      .then(data => console.log(data))

    this._updateCurentId()

  }

  _updateCurentId() {
    this.currentId = this.cardTargets
                              .filter((item) => !item.classList.contains('removed'))[0].dataset.id
  }

  _initCards(card, index) {
    const cards = this._activeCards()

    cards.forEach((card, index) => {
      card.style.zIndex = cards.length - index;
      card.style.transform = 'scale(' + (20 - index) / 20 + ') translateY(-' + 30 * index + 'px)';
      card.style.opacity = (10 - index) / 10;
    });

    this.element.classList.add('loaded');
  }

  _initSwipe() {
    this.cardTargets.forEach((el) => {
      const hammertime = new Hammer(el);

      this._listenToPan(hammertime, el)
      this._listenToPanEnd(hammertime, el)

    });
  }

  _listenToPan(hammertime, el) {
    hammertime.on('pan', (event) => {
      if (event.deltaX === 0 || event.center.x === 0 && event.center.y === 0) return;

      el.classList.add('moving');
      el.classList.toggle('tinder_love', event.deltaX > 0);
      el.classList.toggle('tinder_nope', event.deltaX < 0);

      const rotate = event.deltaX * 0.03 * event.deltaY / 80;
      event.target.style.transform = `translate(${event.deltaX}px, ${event.deltaY}px) rotate(${rotate}deg)`;
    });
  }

  _listenToPanEnd(hammertime, el) {
    hammertime.on('panend', (event) => {
      el.classList.remove('moving', 'tinder_love', 'tinder_nope');

      const moveOutWidth = document.body.clientWidth;
      const keep = Math.abs(event.deltaX) < 80 || Math.abs(event.velocityX) < 0.5;

      if (!keep && event.additionalEvent === 'panright') {
        this.liked(event.target.dataset.id)
        console.log('like', event.target.dataset.id)
      } else if (!keep && event.additionalEvent === 'panleft') {
        this.disliked(event.target.dataset.id)
      }

      event.target.classList.toggle('removed', !keep);
      this._updateCurentId()
      if (keep) {
        event.target.style.transform = '';
      } else {
        const endX = Math.max(Math.abs(event.velocityX) * moveOutWidth, moveOutWidth);
        const toX = event.deltaX > 0 ? endX : -endX;
        const endY = Math.abs(event.velocityY) * moveOutWidth;
        const toY = event.deltaY > 0 ? endY : -endY;
        const xMulti = event.deltaX * 0.03;
        const yMulti = event.deltaY / 80;
        const rotate = xMulti * yMulti;

        event.target.style.transform = `translate(${toX}px, ${toY + event.deltaY}px) rotate(${rotate}deg)`;
        this._initCards();
      }
    });
  }

  _createButtonListener(love, event) {
    const cards = this._activeCards()
    const moveOutWidth = document.body.clientWidth * 1.5;
    if (!cards.length) return false;

    const card = cards[0];
    const minus = love ? '' : '-'

    card.style.transform = `translate(${minus}${moveOutWidth}px, -100px) rotate(${minus}30deg)`;
    card.classList.add('removed');
    this._updateCurentId()

    this._initCards();
    event.preventDefault();
  }

  _activeCards() {
    return this.cardTargets.filter(e => !e.classList.contains('removed'));
  }
}