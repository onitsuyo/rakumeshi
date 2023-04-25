class Recipe < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :ingredients

  validates :name, presence: true
  validates :caption, presence: true
end
