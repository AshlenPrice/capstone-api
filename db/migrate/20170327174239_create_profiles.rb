# frozen_string_literal: true
class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :given_name, null: false
      t.string :family_name, null: false
      t.integer :role, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
