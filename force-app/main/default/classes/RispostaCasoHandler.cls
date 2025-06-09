public class RispostaCasoHandler {
    public static void CambioStatoRisposta(List<Caso__c> casoAggiornato) {
        for (Caso__c caso : casoAggiornato) {
            if (String.isNotBlank(caso.Risposta__c) && caso.Risposta__c.length() > 10) {
                caso.Stato__c = 'Chiuso';
                caso.Data_Fine__c = DateTime.now();
            }
        }
    }
}