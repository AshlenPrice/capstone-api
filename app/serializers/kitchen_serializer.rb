# frozen_string_literal: true
class KitchenSerializer < ActiveModel::Serializer
  attributes :id, :kitchen_name, :location, :phone_number, :email,
             :available_hours, :description
  # has_one :user
end
