import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="club"
export default class extends Controller {
  static targets = ["post", "leave", "modal", "form"];
  connect() {}

  triggerModal(e) {
    // const modal = document.getElementById("postModal");
    // modal.classList.add("is-active");
    e.preventDefault();
    this.modalTarget.classList.toggle("hide");
  }
}
