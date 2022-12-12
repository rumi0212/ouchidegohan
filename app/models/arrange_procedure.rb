class ArrangeProcedure < ApplicationRecord

  belongs_to :arrange_recipe

  with_options presence: true do
    validates :body
  end

end
