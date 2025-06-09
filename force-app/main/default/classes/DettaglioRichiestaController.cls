public with sharing class DettaglioRichiestaController {
    
    public Id recordId = ApexPages.currentPage().getParameters().get('Id');
    public Caso__c caso { get; set; }
    public boolean displayPopup {get; set;} 

    public DettaglioRichiestaController() {
        if (recordId != null) {
            caso = [SELECT Name, Oggetto__c, Data_Inizio__c, Descrizione__c,
                    Account_ID__c, Stato__c, Data_Fine__c, Risposta__c
                    FROM Caso__c WHERE Id = :recordId WITH SECURITY_ENFORCED LIMIT 1];
        }
    }

    public void closePopup() { displayPopup = false; }     

    public void showPopup() { displayPopup = true; }
    
    public void salva() {
    try {
        if (caso != null) {
            update caso;
        }
    } catch (Exception e) {
        ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Errore nel salvataggio: ' + e.getMessage()));
    }
}
}