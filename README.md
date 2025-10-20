# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Community Sports (Pickleball Challenge)

Members: Abby Miggiani

Description: A tool that helps people organize informal sports tournaments at
public courts/fields, bars, or gyms. This application would be focused on allowing
organizers to find locations, dates, and players. Community members can browse
upcoming tournaments, check out skill levels, and sign up for games. Organizers
would be able to keep track of their players and scores.

One sentence summary: A tool that allows organizers to advertise their upcoming
sports tournaments to a public platform where players and see and sign up.

Functions:

User:
    - be able to upload a file/create a tournament
    - be able to login and log out
    - be able to sign up for tournaments
    - view upcoming tournaments

Administrator:
    - Me, everything

How can these be accomplished with an existing solution?
    - Create an instagram page that accepts posters for upcoming tournaments to post
for followers to view

Minimum Valuable Product
    1. What's the main problem I'm solving?
        - helping organizers advertise their tournaments
        - helping players find local tournaments in their area
    2. What's the simplest way to solve it?
        - organizers sign up for an account
        - they upload a poster to the website where it is displayed publicly
        - or they fill in details which is posted publicly
    3. What's the minimum set of features needed?
        - login ability
        - being able to save and post data to the web
        - Being able to upload a file (poster)
    4. What can I build in 2-4 weeks?
        - login ability
        - save data to the backend
        - (maybe) upload data in an organized format to the website

SCRUM Meeting 2
- What did you do yesterday?
- What are you working on today?
Getting the login working and the user model. Getting github copilot, and
uploading the website to Heroku
- What are the impediments to accomplishing your plans?
I need to remove the sensitive information from my files (like passwords).

TODO:
- Upload website to Heroku (remove sensitive information)


Project Analysis
- All tables, attributes (and types)
Table 1 - Games table (see games model)
Table 2 - User table (username, password, games made ids, games joined ids)
- Identify primary and foreign keys
We need to create unique identifiers for each item in a table, and an identifier
for each individual table
- Mark relationships
Users create games. users join games