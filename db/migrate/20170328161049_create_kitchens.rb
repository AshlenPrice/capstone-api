# frozen_string_literal: true
class CreateKitchens < ActiveRecord::Migration[5.0]
  def change
    create_table :kitchens do |t|
      t.string :kitchen_name
      t.string :location
      t.integer :phone_number
      t.string :email
      t.string :available_hours
      t.boolean :freezer
      t.boolean :ovens
      t.boolean :refrigirator
      t.boolean :food_prep_counter
      t.boolean :slicers
      t.boolean :mixers
      t.boolean :food_processors
      t.boolean :ranges
      t.boolean :sinks
      t.boolean :shelving
      t.boolean :storage
      t.boolean :safety_equipment
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
