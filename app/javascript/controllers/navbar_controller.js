import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["menu", "avatar"];
  connect() {
    window.addEventListener("click", (e) => {
      if (
        !this.avatarTarget.contains(e.target) &&
        !this.menuTarget.contains(e.target) &&
        !this.menuTarget.classList.contains("hide")
      ) {
        this.menuTarget.classList.add("hide");
      }
    });
  }

  toggleMenu() {
    this.menuTarget.classList.toggle("hide");
  }
}
