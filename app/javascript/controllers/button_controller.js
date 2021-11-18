import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["count", "price", "fixedprice", "moins", "plus"]

  plus(event) {
    const price = parseFloat(this.fixedpriceTarget.innerHTML);

    this.moinsTarget.classList.remove("grey")
    this.moinsTarget.classList.add("normal")


    this.countTarget.innerText = parseFloat(this.countTarget.innerText) + 1;
    this.priceTarget.innerText = parseFloat(this.priceTarget.innerText) + price ;

    if (parseFloat(this.countTarget.innerText) > 10) {
      console.log(this.countTarget.innerText);
      this.element.setAttribute('disabled', '');
      console.log(this.element);
    }

  }

  minus(event) {
    const price = parseFloat(this.fixedpriceTarget.innerHTML);

    this.plusTarget.classList.remove("grey")
    this.plusTarget.classList.add("normal")

    if (parseFloat(this.countTarget.innerText) > 0) {
    this.countTarget.innerText = parseFloat(this.countTarget.innerText) - 1;
      this.priceTarget.innerText = parseFloat(this.priceTarget.innerText) - price ;
    }

    if (parseFloat(this.countTarget.innerText) < 1) {
      this.moinsTarget.classList.remove("normal")
      this.moinsTarget.classList.add("grey")
    }
    this.element.setAttribute('disabled', '');
    console.log(this.element);

  }


}
