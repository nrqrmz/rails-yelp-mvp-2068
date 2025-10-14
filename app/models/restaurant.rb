class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze

  has_many :reviews, dependent: :destroy

  validates_presence_of :name, :address, :category
  validates :category, inclusion: { in: CATEGORIES }
end
