class Rating < ActiveRecord::Base
	belongs_to :user
  belongs_to :beer

	validates :body, presence: true
  validates :beer_id, uniqueness: {scope: :user_id}
end
