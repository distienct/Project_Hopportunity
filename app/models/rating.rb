class Rating < ActiveRecord::Base
	belongs_to :user
  belongs_to :beer

  validates :rating, presence: true, numericality: {greater_than: 0, less_than_or_equal_to: 5}
	validates :body, presence: true
  validates :beer_id, uniqueness: {scope: :user_id}
end
