class User < ActiveRecord::Base
  has_secure_password

  has_many :checkins
	has_many :ratings

  validates :email, presence: true, uniqueness: true, format: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  def full_name
    "#{first_name} #{last_name}".strip.squeeze(" ")
  end

  def recent_eight_checkins
    checkins.order("updated_at DESC").limit(8)
  end

  def recent_five_reviews
    ratings.order("updated_at DESC").limit(5)
  end
end
