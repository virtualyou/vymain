# VirtualYou Can and Cannot List
These texts contain a timely description, in use-case format of what VirtualYou
can and cannot do. When changes occur in the code or new use case status changes,
this news will be published here.

## Jan 19, 2024
### Can
- Register User or Team
- Register general user (Owner role)
- Captcha secures general user registration
- Invite Agent (read/write association)
- Invite Monitor (read-only association)
- Personal-Contacts (*CRUD Owner,Agent *RO Monitor)
- Administration-Tasks (*CRUD Owner,Agent *RO Monitor)
- Administration-Needs (*CRUD Owner,Agent *RO Monitor)
- Medical-Prescriptions (*CRUD Owner,Agent *RO Monitor)
- Financial-Assets (*CRUD Owner,Agent *RO Monitor)
- Financial-Debts (*CRUD Owner,Agent *RO Monitor)
- Legal-Docs (*CRUD Owner,Agent *RO Monitor)
- Admin Role sees all user creations (one admin user)

### Cannot
- Change user password
- Disconnect/deactivate Agent
- Disconnect/deactivate Monitor
- Personal-Celebrations (*CRUD and *RO)
- Personal-CertOrAward (*CRUD and *RO)
- Personal-PerGenInfos (*CRUD and *RO)
- Medical-Surgeries (*CRUD Owner,Agent *RO Monitor)
- Medical-MedGenInfos (*CRUD Owner,Agent *RO Monitor)
- Financial-Budgets (*CRUD Owner,Agent *RO Monitor)
- Financial-Registers (*CRUD Owner,Agent *RO Monitor)
- Financial-Outstandings (*CRUD Owner,Agent *RO Monitor)
- Financial-OutstandingInfos (*CRUD Owner,Agent *RO Monitor)
- Financial-FinGenInfos (*CRUD Owner,Agent *RO Monitor)
- Dashboard Settings for User (userauth new models)
- Inform and Notify all with Kafka
- Accept name, email for Newsletter send
- Send email from website

## Notes
CRUD - Create,Read,Update,Delete
RO - Read Only