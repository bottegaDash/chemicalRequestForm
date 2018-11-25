class CreateChemicals < ActiveRecord::Migration[5.2]
  def change
    create_table :chemicals do |t|
      t.string :name
      t.integer :status

      t.timestamps
    end
  end
end