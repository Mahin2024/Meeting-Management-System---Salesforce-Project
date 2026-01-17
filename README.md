# Salesforce Meeting Management System

### 📝 Project Description
This is a professional **Meeting Management System** built on the Salesforce platform. The application is designed to automate the lifecycle of a meeting—from scheduling and capacity planning to participant registration and automated email notifications.

The project leverages **Lightning Web Components (LWC)** and **Apex** to provide a high-performance, custom-tailored user experience that goes beyond standard Salesforce functionality.

---

### 🚀 Key Features

* **LWC Powered UI:** Custom-built Lightning Web Components for a modern and responsive participant registration interface.
* **Real-time Capacity Tracking:** Automated logic to track 'Registered' vs 'Remaining' slots for every meeting.
* **Capacity Hard-Stop:** A robust validation system that prevents registration once a meeting is full.
* **Data Integrity:** Custom validation rules to ensure meeting dates are never set in the past.
* **Automated Notifications:** Integration with Salesforce Email Services to send instant confirmation emails to participants upon registration.

---

### 🛠️ Technical Stack

* **Frontend:** Lightning Web Components (LWC)
* **Backend:** Apex (Controllers & Custom Logic)
* **Automation:** Salesforce Flows & Email Alerts
* **Database:** Custom Objects (`Meeting__c`, `Participant__c`)
* **Tools:** Salesforce CLI, VS Code, Git

---

### 📸 Project Walkthrough

#### 1. Meeting Dashboard
A centralized home page view to monitor all upcoming meetings, their locations, and current occupancy status.
<img width="1920" height="1080" alt="Screenshot 2026-01-17 155354" src="https://github.com/user-attachments/assets/c69085ae-f807-4238-ad56-007814b8432e" />


#### 2. Meeting Validation (Date Check)
The system ensures data accuracy by preventing the creation of meetings with past dates.
![Date Validation](assets/Screenshot_154949.png)

#### 3. Participant Registration (Custom LWC)
A streamlined registration form built with LWC to link participants to specific meetings efficiently.
![Participant Registration](assets/Screenshot_155201.jpg)

#### 4. Capacity Constraint Logic
When a meeting reaches its maximum limit, the system triggers a custom error message to prevent over-registration.
![Capacity Error](assets/Screenshot_160902.jpg)

#### 5. Automated Email Confirmation
Successful registration automatically triggers a professional email sent to the participant with all relevant meeting details.
![Email Confirmation](assets/Screenshot_160305.png)

---

### 📂 Repository Structure

  /force-app/main/default/
    ├── lwc/
    │   ├── meetingManager/       <-- Aapka LWC component
    │   └── participantForm/      <-- Doosra LWC component
    ├── classes/
    │   └── MeetingController.cls <-- Aapka Apex Controller
    ├── objects/
    │   ├── Meeting__c/
    │   └── Participant__c/

---
## 📝 How to Use
1. open salesforce org.
2. Navigate to the **Meeting Management** app in Salesforce.
3. Start by creating a new **Meeting**.
4. Register a **Participant** to see the capacity update and email trigger in action.
