class Establishment < ActiveRecord::Base
  has_many :beers
  has_many :selections
  has_many :select_beers, through: :selections, source: :beer

  validates :name, presence: true

  geocoded_by :address
  after_validation :geocode 
end
