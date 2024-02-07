import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="club"
export default class extends Controller {
  static targets = [
    "post",
    "leave",
    "modal",
    "form",
    "clubCard",
    "joinButton",
    "eventModal",
  ];
  connect() {}

  triggerModal(e) {
    // const modal = document.getElementById("postModal");
    // modal.classList.add("is-active");
    e.preventDefault();
    this.modalTarget.classList.toggle("hide");
  }

  triggerEventModal(e) {
    // const modal = document.getElementById("postModal");
    // modal.classList.add("is-active");
    e.preventDefault();
    this.eventModalTarget.classList.toggle("hide");
  }

  async joinClub(e) {
    e.preventDefault();
    const clubId = e.currentTarget.dataset.clubId; // Assuming you have a data attribute in your HTML element for clubId
    const data = { club_id: clubId }; // Additional data if needed
    console.log("Joining club:", data);
    try {
      const response = await fetch("/memberships", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]')
            .content,
        },
        body: JSON.stringify(data),
      });

      if (response.ok) {
        const result = await response.json();
        if (result.status === "success") {
          console.log("Membership created successfully:", result.membership);
          window.location.replace("/clubs/" + clubId);
          // e.target.outerHTML = `<a href="clubs/${clubId}" class="button main">View</a>`;
        } else {
          console.error("Error creating membership:", result.errors);
        }
      } else {
        console.error("Network error:", response.statusText);
      }
    } catch (error) {
      console.error("Error:", error.message);
    }
  }
}
