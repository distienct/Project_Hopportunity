class Beer < ActiveRecord::Base
  has_many :checkins, dependent: :destroy
  has_many :checked_in_users, through: :checkins, source: :user
  has_many :ratings, dependent: :destroy
  has_many :rating_users, through: :ratings, source: :user
  has_many :selections, dependent: :destroy
  has_many :select_establishments, through: :selections, source: :establishment
  belongs_to :category, dependent: :destroy
  belongs_to :brewery

  validates :name, presence: true
  validates :brewery_id, presence: true
  validates :abv, numericality: {:greater_than => 0 }

end
