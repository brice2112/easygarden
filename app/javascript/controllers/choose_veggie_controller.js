import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="choose-veggie"
export default class extends Controller {
  static targets = ["comp", "vege", "button"]

  compCount = this.compTargets.length;
  counter = 0;

  chosen(event) {
    var get_veggie = (event.target.dataset.value);
    this.addIntoCompartment(get_veggie);
  }

  addIntoCompartment(element) {
    if (this.counter < this.compCount) {
      console.log(this.counter);
      this.compTargets[this.counter].textContent = element;
      this.counter++;
      this.checkButtonState();
    } else {
      console.log("CannotAddAdditionnalVegetable");
    }
  }

  checkButtonState() {
    if (this.counter === this.compCount) {
      this.buttonTarget.disabled = false;
      this.vegeTargets.forEach(element => {
        console.log(element);
        element.classList.toggle('active');
      });
      
    }
  }
}
