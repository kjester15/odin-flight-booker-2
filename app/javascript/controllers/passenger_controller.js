import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["add", "remove"]

  connect() {
    console.log("Hello World!")
  }

  add() {
    console.log("hi")
  }

  remove() {
    console.log("bye")
  }
}
