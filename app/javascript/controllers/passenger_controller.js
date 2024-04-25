import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["template", "target", "fields"]

  connect() {
    console.log('connected')
  }

  add() {
    let temp = this.templateTarget
    let clone = temp.content.cloneNode(true)
    this.targetTarget.appendChild(clone)
  }

  remove() {

  }
}
