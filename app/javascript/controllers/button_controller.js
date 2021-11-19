import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["count", "price", "fixedprice", "moins", "plus", "countsub"]

  plus(event) {
    const fixedprice = parseFloat(document.querySelector("#jsaisplus").innerText);
    const transport = parseFloat(document.querySelector(".transportt").innerHTML);
    let price = parseFloat(document.querySelector("#priice").innerHTML);
    let price2 = parseFloat(this.fixedpriceTarget.innerHTML);

    this.moinsTarget.classList.remove("grey")
    this.moinsTarget.classList.add("normal")

    document.querySelector("#counter2").innerHTML = parseFloat(document.querySelector("#counter2").innerHTML) + 1;

    this.countTarget.innerText = parseFloat(this.countTarget.innerText) + 1;
    this.priceTarget.innerText = parseFloat(this.priceTarget.innerText) + price2 ;

    document.querySelector('.sub-total span').innerHTML = ""
    document.querySelector('.sub-total span').insertAdjacentHTML("beforeend", parseFloat(price+=fixedprice))

    let nights = parseFloat((document.querySelector(".yolo").innerHTML))
    document.querySelector('#toto span').innerHTML = "";
    if (isNaN(parseFloat(transport + (nights * parseFloat((document.querySelector("#per-night").innerHTML))))) === false) {
    document.querySelector('#toto span').insertAdjacentHTML("beforeend", parseFloat(transport + (nights * parseFloat((document.querySelector("#per-night").innerHTML)))));
    }
  }

  minus(event) {
    const fixedprice = parseFloat(document.querySelector("#jsaisplus").innerText);
    const transport = parseFloat(document.querySelector(".transportt").innerHTML);
    let price = parseFloat(document.querySelector("#priice").innerHTML);
    let price2 = parseFloat(this.fixedpriceTarget.innerHTML);

    this.plusTarget.classList.remove("grey")
    this.plusTarget.classList.add("normal")

    document.querySelector("#counter2").innerHTML = parseFloat(document.querySelector("#counter2").innerHTML) - 1;

    if (parseFloat(this.countTarget.innerText) > 0) {
    this.countTarget.innerText = parseFloat(this.countTarget.innerText) - 1;
      this.priceTarget.innerText = parseFloat(this.priceTarget.innerText) - price2 ;

      document.querySelector('.sub-total span').innerHTML = ""
      document.querySelector('.sub-total span').insertAdjacentHTML("beforeend", parseFloat(price-=fixedprice))

      let nights = parseFloat((document.querySelector(".yolo").innerHTML))
      document.querySelector('#toto span').innerHTML = "";
      if (isNaN(parseFloat(transport + (nights * parseFloat((document.querySelector("#per-night").innerHTML))))) === false) {
        document.querySelector('#toto span').insertAdjacentHTML("beforeend", parseFloat(transport + (nights * parseFloat((document.querySelector("#per-night").innerHTML)))));
      }

    }

    if (parseFloat(this.countTarget.innerText) < 1) {
      this.moinsTarget.classList.remove("normal")
      this.moinsTarget.classList.add("grey")
      event.preventDefault()
    }
    this.element.setAttribute('disabled', '');
  }
}
