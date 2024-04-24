import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "additional"]

  formTargetConnected() {
    // console.log("yay")
    // let temp = this.formTarget
    // let clon = temp.cloneNode(true)
    // this.formTarget.appendChild(clon)
  }

  add() {
    let temp = this.formTarget
    let clone = temp.cloneNode(true)
    this.formTarget.appendChild(clone)
  }

  remove() {

  }
}
