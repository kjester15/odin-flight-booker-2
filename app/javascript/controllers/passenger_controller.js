import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["template", "target", "fields"]

  connect() {
    console.log('connected')
  }

  add() {
    console.log('hi')
    let temp = this.fieldsTarget
    console.log(temp)
    let clone = temp.cloneNode(true)
    console.log(clone)
    this.targetTarget.appendChild(clone)
  }

  remove() {

  }
}
