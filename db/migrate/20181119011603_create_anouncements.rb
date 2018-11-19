class CreateAnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :anouncements do |t|
      t.string :title
      t.text :details

      t.timestamps
    end
  end
end
