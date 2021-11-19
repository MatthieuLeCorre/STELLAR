import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ['form', 'passengers', 'startDate', 'endDate']

  compute(event) {

    const passengers = this.passengersTarget.value;
    const startInput = this.startDateTarget.value;
    const endInput = this.endDateTarget.value;
    const transport = parseFloat(document.querySelector(".transportt").innerHTML);
    const priceNight = parseFloat(document.querySelector("#per-night").innerHTML);
    let nights = (Date.parse(endInput) - Date.parse(startInput)) / (1000 * 60 * 60 * 24);

    if (isNaN(nights) === false) {
      document.querySelector('#nights span').innerHTML = "";
      document.querySelector('#nights span').insertAdjacentHTML("beforeend", nights);

      document.querySelector('#counter2').innerHTML = "";
      document.querySelector('#counter2').insertAdjacentHTML("beforeend", passengers);

      document.querySelector('#priice').innerHTML = "";
      document.querySelector('#priice').insertAdjacentHTML("beforeend", passengers * nights * priceNight);

      document.querySelector('#toto span').innerHTML = "";
      document.querySelector('#toto span').insertAdjacentHTML("beforeend", (passengers * (transport + (nights * priceNight))));

    }
  }
}
