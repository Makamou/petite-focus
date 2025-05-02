// Get references to the button and image container
const button = document.getElementById("showImageButton");
const imageContainer = document.getElementById("imageContainer");

// Add an event listener to the button to toggle the image visibility
button.addEventListener("click", () => {
  // Toggle the 'hidden' class to show or hide the image
  imageContainer.classList.toggle("hidden");
});
