#Link Board Lab

We are going to create a clone of [hacker news](https://news.ycombinator.com/). Hacker news is a reddit-style link board that allows users to post links which are upvoted by other users so the best links rise to the top.

For today we're going focus on `Users` and `Posts` only. The goal for tonight is to create an app that allows users to sign up, login, and add posts (no comments or voting yet).


##Getting started

* Fork / clone
* cd to cloned repo
* create new rails app `rails new ./ -T`
* Create `User` model
* Create authentication routes / views / actions
* Create `Post` model
* Create crud routes / views / actions for `Post`
* Add validations
    * post.title - should be between 10 and 255 chars
    * post.link - should be a valid url
    * user.email - should be a valid email
    * user.name - should be required
 



##Models

####User
* email
* password_digest
* name

####Post
* title
* link
* user_id


##Routes


###Auth

| Verb | Route | Action | Purpose |
|------|-------|------------|--------|---|
| GET | /signup | user#new | render user sign up form | 
| POST | /signup | user#create | create user in database (signup) | 
| GET | /login | session#new | render user log in form |
| POST | /login | session#create | create user session (login) |
| GET / DELETE | /logout | session#destroy | destroy user session (logout) |


###Post
Create full CRUD routes.





