import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['items', 'form_less', 'form_more', 'tokenField'];
  less(event) {
    event.preventDefault();
    let new_value = parseInt(this.itemsTarget.value);
    if (new_value > 0) {
      new_value -= 1;
      console.log(new_value);
      this.itemsTarget.value = new_value;
    }
  }
  more(event) {
    event.preventDefault();
    let new_value = parseInt(this.itemsTarget.value);
    new_value += 1;
    console.log(new_value);
    this.itemsTarget.value = new_value;
  }
  connect() {
    let token = document.querySelector("meta[name='csrf-token']").content
    this.tokenFieldTarget.value = token
  }
}
