# frozen_string_literal: true
class Kitchen < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :kitchen_name, presence: true
  validates :location, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :description, presence: true
end
