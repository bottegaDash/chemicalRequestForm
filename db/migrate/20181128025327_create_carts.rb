class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.string :chemical
      t.integer :count
      t.references :request_form, foreign_key: true

      t.timestamps
    end
  end
end
