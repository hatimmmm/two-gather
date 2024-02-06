import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="post"
export default class extends Controller {
  static targets = ["menu", "trigger"];
  connect() {
    window.addEventListener("click", (e) => {
      if (
        !this.triggerTarget.contains(e.target) &&
        !this.menuTarget.classList.contains("hide")
      ) {
        this.menuTarget.classList.add("hide");
      }
    });
  }

  triggerDropdown(e) {
    e.preventDefault();
    this.menuTarget.classList.toggle("hide");
  }
}
