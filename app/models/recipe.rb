class Recipe < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :ingredients
  has_many :seasonings
  has_many :procedures 

  validates :name, presence: true
  validates :caption, presence: true
end
