class ArrangeRecipe < ApplicationRecord
  
  has_one_attached :image
  
  has_many :arrange_procedures, dependent: :destroy
  has_many :arrange_ingredients, dependent: :destroy
  
  accepts_nested_attributes_for :arrange_procedures, allow_destroy: true
  accepts_nested_attributes_for :arrange_ingredients, allow_destroy: true
  
  with_options presence: true do
    validates :serving
    validates :title
    validates :comment
    validates :arrange_ingredients
    validates :arrange_procedures
  end
  
end
