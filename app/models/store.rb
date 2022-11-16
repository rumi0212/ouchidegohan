class Store < ApplicationRecord
  
  has_one_attached :image
  
  belongs_to :category
  
  def self.category(category_id)
　if search #⇐ここがnil/falseになってないか確認する
　　Store.where(category_id: category_id)
　else
　　Store.all
　end
  end
end
