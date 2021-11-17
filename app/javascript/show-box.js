
let participantsNumber = parseFloat(document.querySelector("#counter").innerText);
let prixTotal = parseFloat(document.querySelector("#price").innerText);
let formTotal = parseFloat(document.querySelector("#price-input").value);
const payTotal = document.querySelector("#submit").value.split(/[^\d]/);
let payTotal2 = parseFloat(payTotal[4]);

const buttonMinus1 = document.querySelector("#minus");
const buttonPlus1 = document.querySelector("#inc");

const counterElement = document.getElementById("counter");
const prix = document.getElementById("price");
const form = document.getElementById("price-input");
const payElement = document.getElementById("submit");

buttonMinus1.addEventListener('click', (event) => {
  if (participantsNumber <= 1) {
    event.currentTarget.classList.add("disabled");
    event.currentTarget.classList.remove("blue");
  }
  participantsNumber -= 1;
  counterElement.innerHTML = participantsNumber;
  prixTotal -= 150;
  prix.innerHTML = `${prixTotal}€`;
  formTotal -= 15000;
  form.value = formTotal;
  buttonPlus1.classList.remove("blue");
  event.currentTarget.classList.add("blue");
  payTotal2 -= 150;
  payElement.value = `Pay ${payTotal2}€`;
});


buttonPlus1.addEventListener('click', (event) => {
  event.currentTarget.classList.remove("disabled");
  buttonMinus1.classList.remove("disabled");
  participantsNumber += 1;
  counterElement.innerHTML = participantsNumber;
  prixTotal += 150;
  prix.innerHTML = `${prixTotal}€`;
  formTotal += 15000;
  form.value = formTotal;
  buttonMinus1.classList.remove("blue");
  event.currentTarget.classList.add("blue");
  payTotal2 += 150;
  payElement.value = `Pay ${payTotal2}€`;
});
