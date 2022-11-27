class Recipe < ApplicationRecord

  has_one_attached :image
  belongs_to :category
  belongs_to :store
  has_many :procedures, dependent: :destroy
  has_many :ingredients, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :arrange_recipes, dependent: :destroy

  accepts_nested_attributes_for :procedures, allow_destroy: true
  accepts_nested_attributes_for :ingredients, allow_destroy: true


  with_options presence: true do
    validates :serving
    validates :title
    validates :comment
    validates :ingredients
    validates :procedures
  end
  


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
