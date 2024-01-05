# CHANGELOG

This file is external to all the work (repos) in VirtualYou
however, we will try to keep this file current.

We will NOT go back in history, but as of Dec 29, 2023, we will
log the version changes to repos and provide a high-level view
of the work and progress across the VirtualYou landscape.

## APIs
The APIs will be versioned together even if some APIs are untouched
during a DEV cycle. Please note that the current speech/ API is
not part of the API set (each.env).

## Application and Support Utilities
The application or app/ repo will be uniquely versioned. The
remaining repos will be versioned uniquely as well.

## Logging
### Jan05_2023
APIs hosted on Beast v0.1.9-beast
App hosted on Beast v0.2.12-beast

- removed the client_id, secret, was NOT a solution
- emails working
- registrations working and keys on both entities (mapping both ways)
- DO NOT HAVE MFA IN PLACE

### Dec29_2023
APIs 0.1.9-unhosted
APIs built
APIs pushed
app 0.2.10-unhosted

The docker compose file api.yaml modified to use 0.1.9-unhosted
for local testing. The DEV cycle did several things:

- added fullname to user entity
- using AWS pre-built HTML templates for Agent and Monitor invitation.
- added notification API to isolate use of AWS SES from the application itself.
- added security to notification API to only accept client_id and client_secret instead of user cookies.


