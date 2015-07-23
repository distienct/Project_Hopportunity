class Checkin < ActiveRecord::Base
  belongs_to :user
  belongs_to :beer

  def beers_consumed_today(date)
    Checkin.where("created_at = ?", date)
  end
end