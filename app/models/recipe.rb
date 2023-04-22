class Recipe < ApplicationRecord
  
  belongs_to :user
  has_one_attached :image

  validates :name, presence: true
  validates :caption, presence: true
end
