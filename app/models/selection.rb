class Selection < ActiveRecord::Base
  belongs_to :establishment
  belongs_to :beer
end
