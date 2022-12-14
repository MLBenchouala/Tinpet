import { Controller } from "@hotwired/stimulus"
import Hammer from 'hammerjs'
import Swal from 'sweetalert2'


export default class extends Controller {
  static targets = [ "card", "nopeBtn", "likeBtn" ]
  static values = { ids: Array, currentId: Number, background: String }

  connect() {
    console.log(this.nopeBtnTarget)
    this.csrf = document.querySelector("[name=csrf-token]").content

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
    this._updateCurrentId()
  }

  liked(id) {
    this._updateCurrentId()

    const options = {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-TOKEN": this.csrf }
    }

    fetch(`/pets/${this.currentId}/swipes?liked=true`, options)
      .then(response => response.json())
      .then((data) => {
        if (data.matched) {
          Swal.fire({

            background: `url(${this.backgroundValue})`,
            html:
               `<div class="container zz">
                <div class="match--card photo_R" >
                  <img src="${data.user_1_photo}" />
                </div>
                <div class="match--card photo_L pb-3">
                  <img src="${data.user_2_photo}" />
                </div>
                </div>
                <div class="match">
                  <h2 class="match-alert pb-3">
                    Vous avez un nouveau MATCH !
                  </h2>
                </div>
                <div>
                  <div class="buton-log" style="margin-bottom: 1rem;">
                    <a style="color: #FF3767" class="button-deco" href="/matches/${data.match_id}"class="btn">
                      Envoyer un message
                    </a>
                  </div>
                  <div>
                    <a href="/pets"class="btn">
                      Continuer ?? swiper
                    </a>
                  </div>
                </div>`
          })
        }
      })

    this._updateCurrentId()
  }

  disliked(elementId) {
    this._updateCurrentId()

    const options = {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-TOKEN": this.csrf }
    }

    fetch(`/pets/${this.currentId}/swipes?liked=false`, options)
      .then(response => response.json())
      .then((data) => {
        // console.log(data)
      })

    this._updateCurrentId()

  }

  _updateCurrentId() {
    const currentCard = this.cardTargets
                              .filter((item) => !item.classList.contains('removed'))[0]
    if (currentCard) {
      this.currentId = currentCard.dataset.id
    }
  }

  _initCards(card, index) {
    const cards = this._activeCards()

    cards.forEach((card, index) => {
      card.style.zIndex = cards.length - index;
      card.style.transform = 'scale(' + (20 - index) / 20 + ') translateY(-' + 0 * index + 'px)';
      card.style.opacity = (10 - index) / 10;
    });

    this.element.classList.add('loaded');
  }

  _initSwipe() {
    this.cardTargets.forEach((el) => {
      const hammertime = new Hammer(el);
      hammertime.domEvents = true;
      hammertime.on('tap', (event) => {
        window.location = `/pets/${this.currentId}`
      })
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

      if (event.target.classList.contains('flipped')) {
        event.target.style.transform = `translate(${event.deltaX}px, ${event.deltaY}px) rotate(${rotate}deg) rotateY(180deg)`;
      } else {
        event.target.style.transform = `translate(${event.deltaX}px, ${event.deltaY}px) rotate(${rotate}deg)`;
      }
    });
  }

  _listenToPanEnd(hammertime, el) {
    hammertime.on('panend', (event) => {
      el.classList.remove('moving', 'tinder_love', 'tinder_nope');

      const moveOutWidth = document.body.clientWidth;
      const keep = Math.abs(event.deltaX) < 80 || Math.abs(event.velocityX) < 0.5;

      if (!keep && event.additionalEvent === 'panright') {
        this.liked(event.target.dataset.id)
      } else if (!keep && event.additionalEvent === 'panleft') {
        this.disliked(event.target.dataset.id)
      }

      event.target.classList.toggle('removed', !keep);
      this._updateCurrentId()
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
    this._updateCurrentId()

    this._initCards();
    event.preventDefault();
  }

  _activeCards() {
    return this.cardTargets.filter(e => !e.classList.contains('removed'));
  }
}
