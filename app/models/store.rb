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

  def self.category(category_id)
  　if search
  　　Store.where(category_id: category_id)
  　else
  　　Store.all
  　end
  end
end
