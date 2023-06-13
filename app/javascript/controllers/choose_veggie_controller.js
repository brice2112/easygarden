import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="choose-veggie"
export default class extends Controller {
  static targets = ["field"]

  connect() {
    this.counter = 0
    this.vegetable_ids = []
    console.log(this.fieldTarget);
  }

  addVegetable(event) {
    console.log("add");
    const id = event.currentTarget.dataset.id
    console.log(id);
    this.vegetable_ids.push(id)
    console.log(this.vegetable_ids);
    this.updateField(id)

  }

  removeVegetable(event) {
    const id = event.currentTarget.dataset.id
    if (!this.vegetable_ids.includes(id)) return;

    console.log("je remove");

    const index = this.vegetable_ids.indexOf(id);
    if (index > -1) { // only splice array when item is found
      this.vegetable_ids.splice(index, 1); // 2nd parameter means remove one item only
    }
    console.log(this.vegetable_ids);

    this.updateField(id)
  }

  updateField(id) {
    const counterDiv = document.querySelector(`#counter_${id}`)
    const counter = this.vegetable_ids.filter(x => x == id).length
    counterDiv.innerText = counter
    this.fieldTarget.value = this.vegetable_ids
    console.log(this.fieldTarget.value);
  }

  // compCount = this.compTargets.length;
  // counter = 0;

  // chosen(event) {
  //   var get_veggie = (event.target.dataset.value);
  //   this.addIntoCompartment(get_veggie);
  // }

  // addIntoCompartment(element) {
  //   if (this.counter < this.compCount) {
  //     console.log(this.counter);
  //     this.compTargets[this.counter].textContent = element;
  //     this.counter++;
  //     this.checkButtonState();
  //   } else {
  //     console.log("CannotAddAdditionnalVegetable");
  //   }
  // }

  // checkButtonState() {
  //   if (this.counter === this.compCount) {
  //     this.buttonTarget.disabled = false;
  //     this.vegeTargets.forEach(element => {
  //       console.log(element);
  //       element.classList.toggle('active');
  //     });

  //   }
  // }
}
