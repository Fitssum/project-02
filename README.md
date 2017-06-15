# README
explanations of the technologies used, the approach taken, features, installation instructions, unsolved problems

Introductions

The purpose of this web application is to share bikes between users in five different locations. The application also intends to calculate the amount of rent to be paid by users according to the number of days they have used the bike.

Technologies used

- Seed data is generated on stations, users, bikes and userbikes.
- There is a one to many relationship between the stations and bikes.
- There is a many to many relationships between bikes and users through userbikes.
- CSS animation is included to make the web application more appealing on the index page of stations.
- Bootstrap CDN link is included in the layout application which initiates some text formatting for all pages of the application. The difference can be noticeable when online and offline.
- jquery is included to calculate the amount of rent that users will pay.
- rails ERD gemfile is included to generate ERD from the command line (please see erd.pdf file)

Unsolved problems
- All the RESTful routes are functional except delete.
- Creating, updating or deleting requires users' login which is currently functional. However, the application specifically does not provide exclusive admin privileges.
- Unsolved problem in posting calculated rent.
