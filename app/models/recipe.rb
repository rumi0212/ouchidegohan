class Recipe < ApplicationRecord
  
  has_one_attached :image
  belongs_to :customer
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  
  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end
  
end
