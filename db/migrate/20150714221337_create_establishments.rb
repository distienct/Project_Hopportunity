class CreateEstablishments < ActiveRecord::Migration
  def change
    create_table :establishments do |t|
      t.string :name
      t.string :address
      t.string :website
      t.string :image

      t.timestamps null: false
    end
  end
end
