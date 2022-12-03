class Store < ApplicationRecord

  has_one_attached :image

  belongs_to :category
  has_many :recipes, dependent: :destroy

  with_options presence: true do
    validates :store_name
    validates :introduction
    validates :address
    validates :telephone_number
    validates :opening_hour
  end

  validates :introduction, length: { maximum: 80 }

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image.variant(resize_to_limit: [width, height]).processed
  end

  def self.category(category_id)
  　if search
  　　Store.where(category_id: category_id)
  　else
  　　Store.all
  　end
  end
end
