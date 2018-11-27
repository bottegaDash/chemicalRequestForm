class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.string :name
      t.integer :count
      t.belongs_to :chemreq, foreign_key: true

      t.timestamps
    end
  end
end
