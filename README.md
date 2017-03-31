
## Kitchn Listr

An API to store data for a commercial kitchens for rent directory.

- Deployed On [Heroku](https://secure-mountain-84093.herokuapp.com/)
- Checkout the [Client-Repo](https://ashlenprice.github.io/kitchnlistr-app/)
- Checkout the live [Kitchn Listr ](https://ashlenprice.github.io/kitchnlistr-app/) App

## ERD

* Initial [ERD](http://i.imgur.com/S6ZmKxPl.jpg). This is what I would like my finished
API to look like.
* Final [ERD](http://i.imgur.com/w8mB3tdm.jpg). This represents the current prototype.
---

## Development

#### Dependencies
Install with `bundle install`.

-   [`rails-api`](https://github.com/rails-api/rails-api)
-   [`rails`](https://github.com/rails/rails)
-   [`active_model_serializers`](https://github.com/rails-api/active_model_serializers)
-   [`ruby`](https://www.ruby-lang.org/en/)
-   [`postgres`](http://www.postgresql.org)

#### Installation

1.  Fork and clone this repository.
1.  Install dependencies with `bundle install`.
1.  Create a `.env` for sensitive settings (`touch .env`).
1.  Generate new `development` and `test` secrets (`bundle exec rake secret`).
1.  Store them in `.env` with keys `SECRET_KEY_BASE_<DEVELOPMENT|TEST>` resepctively.
1.  Run the API server with `bin/rails server` or `bundle exec rake server`.

In order to make requests from your deployed client application, you will need
to set `CLIENT_ORIGIN` in the environment (e.g. `heroku config:set
CLIENT_ORIGIN=https://<github-username>.github.io`).



## API End Points

| Verb     | URI Pattern              | Controller#Action   |
|:--------:|:------------------------:|:-------------------:|
| POST     | `/sign-up`               | `users#signup`      |
| POST     | `/sign-in`               | `users#signin`      |
| PATCH    | `/change-password/:id`   | `users#changepw`    |
| DELETE   | `/sign-out/:id`          | `users#signout`     |
| POST     | `/kitchens`                 | `kitchens#create`      |
| GET      | `/kitchens`                 | `kitchens#index`       |
| GET      | `/kitchens/:id`             | `kitchens#show`        |
| PATCH    | `/kitchens/:id`             | `kitchens#update`      |
| DELETE   | `/kitchens/:id`             | `kitchens#destroy`     |
| GET     | `/userskitchen`                 | `kitchens#userskitchen`|


---

### User Actions

#### POST /sign-up

The `create` action expects a *POST* of `credentials` and `user` information identifying a new user and to create, in this case using `getFormFields`:

```html
<form>
  <input name="credentials[email]" type="text" value="a@example.email">
  <input name="credentials[password]" type="password" value="an example password">
  <input name="credentials[password_confirmation]" type="password" value="an example password">
</form>
```
Request:

```sh
curl http://localhost:4741/sign-up \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
  }'
```

```sh
EMAIL=A@A.com PASSWORD=Ash scripts/sign-in.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "A@A.com"
  }
}
```
---
#### POST /sign-in

Request:

```sh
curl http://localhost:4741/sign-in \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=A@A.com PASSWORD=Ash  scripts/sign-in.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "A@A.com",
    "token": "BAhJIiUyNjA2Y2EwYjIzYzU4OGQ5ZDdhY2YwZThlOGM2MzFhMAY6BkVG--9b4e60909025d8db3a9e3cf9fa156d0a851ba2e4"
  }
}
```
---
#### PATCH /change-password/:id

Request:

```sh
curl --include --request PATCH "http://localhost:4741/change-password/$ID" \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'
```

```sh
 TOKEN=BAhJIiUyNjA2Y2EwYjIzYzU4OGQ5ZDdhY2YwZThlOGM2MzFhMAY6BkVG--9b4e60909025d8db3a9e3cf9fa156d0a851ba2e4 scripts/change-password.sh
```

Response:

```md
HTTP/1.1 204 No Content
```
---
#### DELETE /sign-out/:id

Request:

```sh
curl http://localhost:4741/sign-out/$ID \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=1  TOKEN=BAhJIiUyNjA2Y2EwYjIzYzU4OGQ5ZDdhY2YwZThlOGM2MzFhMAY6BkVG--9b4e60909025d8db3a9e3cf9fa156d0a851ba2e4 ID=1 scripts/sign-out.sh
```

Response:

```md
HTTP/1.1 204 No Content
```
---
### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |

---
### GET /users

Request:

```sh
curl http://localhost:4741/users \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```

```sh
 TOKEN=BAhJIiUyNjA2Y2EwYjIzYzU4OGQ5ZDdhY2YwZThlOGM2MzFhMAY6BkVG--9b4e60909025d8db3a9e3cf9fa156d0a851ba2e4 scripts/users.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "users": [
    {
      "id": 2,
      "email": "another@example.email"
    },
    {
      "id": 1,
      "email": "A@A.com"
    }
  ]
}

```
---
### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:4741/users/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=2  TOKEN=BAhJIiUyNjA2Y2EwYjIzYzU4OGQ5ZDdhY2YwZThlOGM2MzFhMAY6BkVG--9b4e60909025d8db3a9e3cf9fa156d0a851ba2e4 scripts/users.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
{
  "user": {
    "id": 2,
    "email": "another@example.email"
  }
}
```
---
### User Actions

All Kkitchen action requests must include a valid HTTP header `Authorization: Token token=<token>` or they will be rejected with a status of 401 Unauthorized.

---

### Reset Database without dropping

This is not a task developers should run often, but it is sometimes necessary.

**locally**

```sh
bin/rake db:migrate VERSION=0
bin/rake db:migrate db:seed db:examples
```

**heroku**

```sh
heroku run rake db:migrate VERSION=0
heroku run rake db:migrate db:seed db:examples
```
---

## Tasks

Developers should run these often!

-   `bin/rake routes` lists the endpoints available in your API.
-   `bin/rake test` runs automated tests.
-   `bin/rails console` opens a REPL that pre-loads the API.
-   `bin/rails db` opens your database client and loads the correct database.
-   `bin/rails server` starts the API.
-   `scripts/*.sh` run various `curl` commands to test the API. See below.

<!-- TODO -   `rake nag` checks your code style. -->
<!-- TODO -   `rake lint` checks your code for syntax errors. -->

## Technologies used

- Ruby
- Ruby on Rails
- PostgreSQL

## Challenges, Learnings & Future Goals

When I started this project I thought it was going to be easier that it turned out.
I wanted to make profiles for user when they sign up so that we could determine what data to
allow them to access based on the user's  `role`. I didn't want to create 2 models for that
since the user's profile shared all the same attributes except their role. ne was either a kitchen
owner the other a chef.
This was hardest to implement. I started out trying to do polymorphic associations, then I tried
to do ActiveRecord::Enum. For the most part I could CRUD on profiles but by the time it got to
linking the profile model and the kitchen model it was hard for me to edit the controller to represent the
data I wanted it to. After a few days of this I abbandoned the feature to come back to it at a later time.
Another thing that I struggled with was showing a user only the kitchens they created, I solved this
problem by creating a new route `\userskitchen`.

I learned how important it is to descope and timebox myself after working on profiles issue for more than 2 days.

I have many unfinished features that I will be working on implementing like:
 Features:
- CRUD for Review (create, read, update, delete)
- Image uploads
- Store assets to AWS
- Owner access reviews on their kitchen
- Star reviews

Data Models
**Profile**
belongs_to :user
  - givenName | string
  - surname | string
  - Role | Owner:string , Chef:string
  - Phone number: integer

**Equipment**
belongs_to :kitchen

- rubber_floor_mats
- fire_extinguisher
- freezer:boolean
- ovens:boolean
- refrigirator:boolean
- food_prep_counter:boolean slicers:boolean mixers:boolean
- food_processors:boolean ranges:boolean
- sinks:boolean shelving:boolean storage:boolean safety_equipment:boolean
- Metal or plastic shelves for walk-in cooler

**Reviews**
belongs_to :profile
has_many_through :kitchens
- Rating -- Star (Boolean?)
- comments: string
