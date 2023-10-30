import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['menu'];

  toggleDropdown() {
    this.menuTarget.classList.toggle('show');
  }
}
