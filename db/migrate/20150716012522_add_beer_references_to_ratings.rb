class AddBeerReferencesToRatings < ActiveRecord::Migration
  def change
    add_reference :ratings, :beer, index: true, foreign_key: true
  end
end
