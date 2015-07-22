class Selection < ActiveRecord::Base
  belongs_to :establishment
  belongs_to :beer

   validates :beer_id, uniqueness: {scope: :establishment_id}
end
