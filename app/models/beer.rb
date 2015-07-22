class Beer < ActiveRecord::Base
  has_many :checkins, dependent: :destroy
  has_many :checked_in_users, through: :checkins, source: :user
  has_many :ratings
  has_many :rating_users, through: :ratings, source: :user
  has_many :selections, dependent: :destroy
  has_many :select_establishments, through: :selections, source: :establishment
  belongs_to :category, dependent: :destroy
  belongs_to :brewery

  validates :name, presence: true
  validates :brewery_id, presence: true
  validates :abv, numericality: {:greater_than => 0 }

  def average_rating
    Rating.where(beer_id: id).average("rating").to_f
  end

  def rating_by_user(user)
    Rating.where("user_id = ? AND beer_id = ?", user, self).first
  end

  def checkins_by_user(user)
    Checkin.where("beer_id = ? AND user_id = ?", self, user).length
  end

end
