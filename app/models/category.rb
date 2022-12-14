class Category < ApplicationRecord
  
  has_many :recipes, dependent: :destroy
  has_many :stores
  
  validates :name, presence: true
end
