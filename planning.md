# Planning

## Questions/requirements
  - What are you making?
      Kitch'n Listr is a directory of local comercial kitch'n that are available for rent.

  - What features do you want to have?
  - Who are you building this for?
      This app is targeted at both commercial kichen owners and chefs
  -

## User Stories

  As a guest I want to:
    - Visit KitchnListr to view available kitchens to rent.
    - Create an account/ sign-in to list a kitchen I own for rent.
    - Create an account/sign-in to review a kitchen I have rented.
    - View Reviews and ratings
    - Search for a kitchen by features

  As a Kitch'n Owner I want to:
    - Create a Kitch'n listing.
    - Upload pictures of my Kitch'n.
    - Edit my listing and its data.
    - Remove my Kitch'n listing
    - View my ratings/reviews
    - Change my password.
    - be able to log out.

  As a Chef I want to:
    - Create a review and rate Kitch'ns I've rented.
    - Change/Edit the reviews I've written.
    - Delete My reviews/ratings.
    - Add a Kitch'n to my favorites
    - Schedule/Reserve a kitch'n slot.
    - Add pictures of what I've cooked.
    - Change my password.
    - be able to log out.
    - Contact a Kitch'n owner to for more informantion

## Features
  - Auth for users
  - Show guests Kitch'n listings |`/kitchens#show`, `/kitchens#index`|
  -
  - CRUD for Kitch'n (create, read, update, delete)
  - CRUD for Review (create, read, update, delete)
  - Image uploads
  - Store assets to AWS
  - Owner access reviews on their kitchen
  - Star reviews

##  Data
**Profile**
belongs_to :user
  - givenName | string
  - surname | string
  - Role | Owner:string , Chef:string
  - Phone number: integer

**Kitchen**
belongs_to :profile
has_many :reviews
  - kitchen_name: string
  - location: string
  - phone number: number
  - email: string
  - hours_of_operation: string
  - (FK) Features (equipment)
  - (FK) Reviews & ratings
  - (FK) Profile_id

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

## Routes
Prefix Verb   URI Pattern                Controller#Action
     reviews GET    /reviews             reviews#index
             POST   /reviews             reviews#create
      review GET    /reviews/:id         reviews#show
             PATCH  /reviews/:id         reviews#update
             PUT    /reviews/:id         reviews#update
             DELETE /reviews/:id         reviews#destroy
    kitchens GET    /kitchens            kitchens#index
             POST   /kitchens            kitchens#create
     kitchen GET    /kitchens/:id        kitchens#show
             PATCH  /kitchens/:id        kitchens#update
             PUT    /kitchens/:id        kitchens#update
             DELETE /kitchens/:id        kitchens#destroy
    profiles GET    /profiles            profiles#index
             POST   /profiles            profiles#create
     profile GET    /profiles/:id        profiles#show
             PATCH  /profiles/:id        profiles#update
             PUT    /profiles/:id        profiles#update
             DELETE /profiles/:id        profiles#destroy
    examples GET    /examples            examples#index
             POST   /examples            examples#create
     example GET    /examples/:id        examples#show
             PATCH  /examples/:id        examples#update
             PUT    /examples/:id        examples#update
             DELETE /examples/:id        examples#destroy
userskitchen GET    /userskitchen        kitchens#userskitchen
     sign_up POST   /sign-up             users#signup
     sign_in POST   /sign-in             users#signin
             DELETE /sign-out/:id        users#signout
             PATCH  /change-password/:id users#changepw
       users GET    /users               users#index
        user GET    /users/:id           users#show

## Project concerns
  - How to model multiple profiles
  - how to model an array of equipment
  - Good ember ui kit package?


  ## wireframes & ERD
  [Wireframe](http://i.imgur.com/LtFxIoYl.jpg)
  [ERD](http://i.imgur.com/S6ZmKxPl.jpg)
