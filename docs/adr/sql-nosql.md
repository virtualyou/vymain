# Use Mongo in lieu of MariaDB

## Status

![Status](https://img.shields.io/badge/status-proposed-yellow) 

## Context

* Each API has a back-end persistence mechanism.
* Currently using MariaDB
* If this application goes global, is MariaDB the right choice?
* Currently the APIs are Node-Express however, this is for speed to market and MVP
* Currently the APIs are Javascript and conversion to Typescript requires effort
* Currently the APIs are Node-Express but may convert to Spring Boot
* With more separation of concerns, would Mongo, e.g. be better suited for great change in domain model design?
* What are the external factors that are impacting this decision? Lots!

## Decision

* To decide on Mongo instead of MariaDB sooner rather than later.

## Impact/Risks/Consequences

* The current impact would be an overall design change in controllers.
* Since, we're yet to be responsible for even test user data, I see no real risk.
* The consequences of change here is time delay to implement the Mongo solution once.
