import { LightningElement } from 'lwc';

export default class ParentComponent extends LightningElement {
    showModal = false;

    handleOpen() {
        //this.showModal = true;
        this.refs.popup.openModal();
    }
}