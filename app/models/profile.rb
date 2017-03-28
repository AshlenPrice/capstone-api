# frozen_string_literal: true
class Profile < ApplicationRecord
  enum role: { chef: 0, kitchen_owner: 1 }
  belongs_to :user

  validates :given_name, presence: true
  validates :family_name, presence: true
  validates :role, presence: true
end
