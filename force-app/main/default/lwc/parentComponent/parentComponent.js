import { LightningElement, api } from 'lwc';
import LightningAlert from 'lightning/alert';

export default class ParentComponent extends LightningElement {

    @api recordId;
    @api stato;

    get isCasoChiuso(){
        return this.stato === 'Chiuso';
    }

    handleOpen() {
        //this.showModal = true;
        this.refs.popup.openModal();
    }

    handleSuccess() {
        this.refs.popup.closeModal();
    }

    salva(){
        if(this.fields != null){
            this.template.querySelector('lightning-record-edit-form').submit(this.fields);
        }else{
            LightningAlert.open({
            message: 'Inserisci Risposta',
            theme: 'error', // a red theme intended for error states
            label: 'Error!', // this is the header text
        });
        }
    }

}