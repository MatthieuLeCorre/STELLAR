import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["end", "start"]

  recupDate(event) {
    document.querySelector('#nights span').innerHTML = "";
    document.querySelector('#total-price span').innerHTML = "";
    document.querySelector("#priice").innerHTML = "";
    document.querySelector('#toto span').innerHTML = "";
    const transport = parseFloat(document.querySelector(".transportt").innerHTML);
    const startInput = document.getElementById('start').children[0].children[1].children[0];
    const endInput = document.getElementById('start').children[1].children[1].children[0];

    let nights = (Date.parse(endInput.value) - Date.parse(startInput.value)) / (1000 * 60 * 60 * 24);
    let participantsNumber = parseFloat((document.querySelector("#counter").innerHTML))

    if (isNaN(nights) === false) {
    document.querySelector('#nights span').insertAdjacentHTML("beforeend", nights);
      console.log(document.querySelector("#per-night").innerHTML);

      document.querySelector('#total-price span').insertAdjacentHTML("beforeend", (nights * parseFloat((document.querySelector("#per-night").innerHTML))));

      document.querySelector('#toto span').insertAdjacentHTML("beforeend", transport + (nights * parseFloat((document.querySelector("#per-night").innerHTML))));

    }
  }
}
