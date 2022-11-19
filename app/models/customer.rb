class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_one_attached :image

  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarks_recipes, through: :bookmarks, source: :recipe

  def own?(object)
    id == object.customer_id
  end

  def bookmark(recipe)
    bookmarks_recipes << recipe
  end

  def unbookmark(recipe)
    bookmarks_recipes.delete(recipe)
  end

  def bookmark?(recipe)
    bookmarks_recipes.include?(recipe)
  end
  
end
