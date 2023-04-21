class Recipe < ApplicationRecord
  
  belongs_to :user

  validates :name, presence: true
  validates :caption, presence: true
end
