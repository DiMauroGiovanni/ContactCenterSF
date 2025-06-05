public with sharing class DettaglioRichiestaController {
    
    public Id recordId { get; set; }
    public Caso__c caso { get; set; }

    public DettaglioRichiestaController() {
        if (recordId != null) {
            caso = [SELECT Name, Oggetto__c, Data_Inizio__c, Descrizione__c,
                    Account_ID__c, Stato__c, Data_Fine__c, Risposta__c
                    FROM Caso__c WHERE Id = :recordId LIMIT 1];
        }
    }

    public void salva() {
        update caso;
    }
}