# frozen_string_literal: true
class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.text :review_body, null: false
      t.references :user, foreign_key: true, null: false
      t.references :kitchen, foreign_key: true, null: false

      t.timestamps
    end
  end
end
