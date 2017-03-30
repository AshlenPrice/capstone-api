# frozen_string_literal: true
# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Kitchen.create([
                 {
                   kitchen_name: 'Hell\'s Kitchen',
                   location: '123 Fire ln, Boston, MA 02123',
                   phone_number: '617-555-5555',
                   email: 'contact@hellskitchen.com',
                   available_hours: 'Mon-Sun 4pm-9pm',
                   description: 'This kitchen Features: 12 Burner Range w/
                   Double Oven, 3 Compartment Sink/Pot Dish Sink,
                   Mixers, Air-Conditioning, Charbroiler/Grill.'
                 },
                 {
                   kitchen_name: 'Test Kitchen',
                   location: '123 Main st, Boston MA',
                   phone_number: '555-555-5555',
                   email: 'contact@test.com',
                   available_hours: 'all day every day',
                   description: ' This kitchen has all the things you need'
                 }

               ])
