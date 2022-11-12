class ArrangeIngredient < ApplicationRecord
  
  belongs_to :arrange_recipe, optional: true
  
  with_options presence: true do
    validates :name
    validates :amount
  end

  
end
