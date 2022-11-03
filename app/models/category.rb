class Category < ApplicationRecord
  
  has_many :recipe, dependent: :destroy
  
end
