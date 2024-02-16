import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="post"
export default class extends Controller {
  static targets = ["menu", "trigger", "comment"];
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

  addComment(e) {
    e.preventDefault();
    const postId = e.currentTarget.dataset.post;
    console.log("Adding comment", this.commentTarget.value, postId);

    fetch("/comments", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]')
          .content,
      },
      body: JSON.stringify({
        comment: {
          content: this.commentTarget.value,
          post_id: postId,
        },
      }),
    })
      .then((response) => {
        if (response.ok) {
          console.log("Comment added successfully", response.json());
          window.location.reload();
        } else {
          throw new Error("Network response was not ok.");
        }
      })
      .then((result) => {
        console.log("Comment added successfully:", result);
        // window.location.reload();
      })
      .catch((error) => {
        console.error("Error:", error.message);
      });
  }
}
