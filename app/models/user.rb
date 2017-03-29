# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :kitchens
end
#   has_one :profile
