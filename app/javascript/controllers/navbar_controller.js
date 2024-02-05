import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["menu"];
  connect() {
    console.log("Connected to navbar controller", this.menuTarget);
  }

  toggleMenu() {
    this.menuTarget.classList.toggle("hide");
  }
}
