class Ingredient < ApplicationRecord
  
  belongs_to :recipe, optional: true
  
  with_options presence: true do
    validates :name
    validates :amount
  end
  
end
