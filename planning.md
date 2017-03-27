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
  - features (equipment): boolean {"3 Compartment Sink/Pot Dish Sink,30 Quart Mixer,4 Burner Range w/ Oven,6 Burner Range w/ Oven,6 Quart Mixer,Air-Conditioning,Blast Chiller,Blender,Convection Oven,Convection Steamer Oven,Cooking Utensils,Dry Storage/Shelving,Fine Mesh Strainer/Chinois,Food Processor/Robot Coupe,Hotel Pans,Ice Cream Maker,Ice Machine,Large Burner/Stock Pot/Candy Burner,Large Strainer/China Cap,Loading Dock,Prep Sink/Service Sink,Reach-In Freezer,Reach-In Refrigerator,Sheet Tray Racks,Sheet Trays,Smallwares,Stainless Steel Table/Prep Table,Standard Oven,Steam Kettle,Steamer,Storage Containers/Cambro,Walk-In Refrigerator"}
  - (FK) Reviews & ratings
  - (FK) Profile_id


**Reviews**
belongs_to :profile
has_many_through :kitchens
  - Rating -- Star (Boolean?)
  - comments: string 



## Project concerns
  - How to model multiple profiles
  - how to model an array of equipment
  - Goog ember ui kit package?
  -
