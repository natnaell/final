##Overview
This web application coordinates basketball fantasy leagues that users can compete in. Each user can create as many teams as he/she likes and draft players. Users are only able to edit their own teams by drafting. The web app is deployed using heroku.
Available at:
https://fathomless-ridge-18022.herokuapp.com

## Resources

###League
A group of users will create a team and join a league. There will be one commissioner per league.
Many to Many Relationship with Users
One to Many Relationship with Teams

###Team
A user will create one team per league that they are subscribed to.
Many to One Relationship with Users 

###Player
Contains basic information about the different available players in the league and which team they are on. One player can belong to only one team per league.
Many to Many Relationship with Leagues
Many to One Relationship with Teams

###Roster
Joins the Team and Player resources

###User
User profile. Each user can have multiple teams but only one per league
Many to Many Relationship with League
One to Many Relationship with Team
