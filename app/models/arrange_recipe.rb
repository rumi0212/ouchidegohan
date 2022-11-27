class ArrangeRecipe < ApplicationRecord

  has_one_attached :image
  belongs_to :recipe
  belongs_to :customer
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


  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image.variant(resize_to_limit: [width, height]).processed
  end

end
