import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="choose-veggie"
export default class extends Controller {
  static targets = ["comp", "field"]

  connect() {
    this.counter = 0
    this.compCount = this.compTargets.length;
    this.vegetable_ids = []
    console.log(this.fieldTarget);
  }

  addVegetable(event) {
    if (this.counter >= this.compCount) return;

    console.log("add");
    const id = event.currentTarget.dataset.id;  //gets the #id of the vegetable in the card
    this.vegetable_ids.push(id);                //adds the #id to the vegetable_ids array
    this.updateField(id);
    this.counter += 1;
  }

  removeVegetable(event) {
    const id = event.currentTarget.dataset.id
    if (!this.vegetable_ids.includes(id)) return;

    console.log("remove");
    const index = this.vegetable_ids.indexOf(id); //gets the position of the #id to remove
    if (index > -1) { // only splice array when item is found
      this.vegetable_ids.splice(index, 1); // 2nd parameter means remove one item only
    }
    this.updateField(id)
    this.counter -= 1;
  }

  updateField(id) {
    const counterDiv = document.querySelector(`#counter_${id}`)  //select the <span #id> of the vegetable in the card
    const counter = this.vegetable_ids.filter(x => x == id).length  //counts the number of occurence of #id of given vegetable
    counterDiv.innerText = counter                                //prints the number in the <span> element
    this.fieldTarget.value = this.vegetable_ids                   //updates the value of the 'toto' field
    console.log(this.fieldTarget.value);
  }
}
