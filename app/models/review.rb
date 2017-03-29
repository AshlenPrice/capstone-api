# frozen_string_literal: true
class Review < ApplicationRecord
  belongs_to :user
  belongs_to :kitchen
  validates :title, presence: true
  validates :review_body, presence: true
end
