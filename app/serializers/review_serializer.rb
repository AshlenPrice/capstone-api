# frozen_string_literal: true
class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :review_body, :kitchen_id
  has_one :user
  has_one :kitchen
end
