# frozen_string_literal: true
class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :family_name, :role
  has_one :user
end
