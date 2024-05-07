# README

This is my solution to ruby on rails [Private Events](https://www.theodinproject.com/lessons/ruby-on-rails-private-events) project for [The Odin Project](https://www.theodinproject.com/).

It is intended to replicate Eventbrite at a basic level, showcasing knowledge of Active Record.

## Models

User
- can create (event)s
- control w Devise

Event
- has creator (user)
- attended by many attendees (user)
- location as a string
- date as date

event_attending
class EventAttending
belongs_to :event_attended, class_name: "User
belongs_to :attendee, class_name: "User

## Views

User
- show (list all events by that user), (list all attended events; then separate by past and future)

Event
- index (list of all), (separate by past and future)
- create form
- show (details of event), (list of attendees)

## Other Tasks

- Refactor into scopes
- Navagation links

## Extra Tasks

- allow users to edit and delete events they create
- allow users to remove themselves as an attendee to their attended_events
- make each event private and add the functionality for the event creator to invite specific users to an event


```
bundle add devise
rails generate devise:install
rails g devise User username:string email:string password:string
-> has_many events
rails g controller Users show
```

``` not used yet
rails g devise:views users
-> requires config/initializers/devise.rb to have "config.scoped_views = true"
```

```
rails g model Event title:string date:date location:text body:text
-> manually add foreign keys and validations

rails g controller Events create index
```