class Recipe < ApplicationRecord
  
  has_one_attached :image
  belongs_to :customer
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  
  
  def post_commented_by?(customer)
    post_comments.exists?(customer_id: customer.id)
  end
  
  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end
  
  def bookmarked_by?(customer)
    bookmarks.exists?(customer_id: customer.id)
  end
  
end
