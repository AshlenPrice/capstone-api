# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :kitchens
  has_many :reviews
end
#   has_one :profile
