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
    validates :ingredients
    validates :procedures
  end

  validates :comment, length: { maximum: 80 }

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image.variant(resize_to_limit: [width, height]).processed
  end

  def get_profile_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image1.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image.variant(resize_to_limit: [width, height]).processed
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
