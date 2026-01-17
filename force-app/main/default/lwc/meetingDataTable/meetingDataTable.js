import { LightningElement, wire, track } from 'lwc';
import getMeetings from '@salesforce/apex/MeetingController.getMeetings';

export default class MeetingDataTable extends LightningElement {

    @track meetings;

    columns = [
        { label: 'Meeting Name', fieldName: 'Name' },
        { label: 'Meeting Date', fieldName: 'Meeting_Date__c', type: 'date' },
        { label: 'Location', fieldName: 'Location__c' },
        { label: 'Capacity', fieldName: 'Capacity__c', type: 'number' },
        { label: 'Registered', fieldName: 'Registered_Participants__c', type: 'number' },
        { label: 'Remaining', fieldName: 'Remaining_Capacity__c', type: 'number' },
        { label: 'Status', fieldName: 'Status__c' }
    ];

    @wire(getMeetings)
    wiredMeetings({ data, error }) {
        if (data) {
            this.meetings = data;
        }
    }
}
