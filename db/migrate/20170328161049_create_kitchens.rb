# frozen_string_literal: true
class CreateKitchens < ActiveRecord::Migration[5.0]
  def change
    create_table :kitchens do |t|
      t.string :kitchen_name, null: false
      t.string :location, null: false
      t.string :phone_number, null: false
      t.string :email, null: false
      t.string :available_hours
      t.text :description, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
