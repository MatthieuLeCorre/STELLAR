import { Controller } from "@hotwired/stimulus";
// Don't forget to import the NPM package
import Typed from "typed.js";

export default class extends Controller {
  connect() {
    console.log("je reconnais le code de max")
    new Typed(this.element, {
      strings: ["In 2062..", "The solar system has never been this close."],
      typeSpeed: 35,
      loop: true
    });
  }
}
