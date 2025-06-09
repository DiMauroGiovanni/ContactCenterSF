import { LightningElement, api } from "lwc";


export default class popUp extends LightningElement {
  showModal = false;

  @api show() {
    this.showModal = true;
  }
  handleDialogClose() {
    this.showModal = false;
  }
}