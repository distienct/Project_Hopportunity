class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.text :description
      t.decimal :abv
      t.references :category, index: true, foreign_key: true
      t.references :brewery, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
