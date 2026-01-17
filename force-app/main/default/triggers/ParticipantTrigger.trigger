trigger ParticipantTrigger on Participant__c (after insert) {

    Map<Id, Integer> meetingCount = new Map<Id, Integer>();

    for (Participant__c p : Trigger.new) {
        if (p.Status__c == 'Registered' && p.Meeting__c != null) {
            meetingCount.put(
                p.Meeting__c,
                meetingCount.containsKey(p.Meeting__c) ? meetingCount.get(p.Meeting__c) + 1 : 1
            );
        }
    }

    if (meetingCount.isEmpty()) return;

    List<Meeting__c> meetings = [
        SELECT Id, Capacity__c, Registered_Participants__c
        FROM Meeting__c
        WHERE Id IN :meetingCount.keySet()
    ];

    for (Meeting__c m : meetings) {
        m.Registered_Participants__c += meetingCount.get(m.Id);

        if (m.Registered_Participants__c >= m.Capacity__c) {
            m.Status__c = 'Full';
        }
    }

    update meetings;
}
