class CreateCrves < ActiveRecord::Migration[5.2]
  def change
    create_table :crves do |t|
      t.string :emergency
      t.string :additional_comments
      t.integer :status
      t.date :date

      t.timestamps
    end
  end
end
