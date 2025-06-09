trigger RispostaCasoTrigger on Caso__c (before update) {
	if(Trigger.isUpdate && Trigger.isBefore)
        RispostaCasoHandler.CambioStatoRisposta(Trigger.new);
}