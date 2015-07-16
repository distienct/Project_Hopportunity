class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.references :establishment, index: true, foreign_key: true
      t.references :beer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
