class ChangeRatingTypeToFloat < ActiveRecord::Migration
  def change
    change_column :ratings, :rating, :float
  end
end
