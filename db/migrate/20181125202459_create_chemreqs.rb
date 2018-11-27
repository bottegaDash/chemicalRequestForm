class CreateChemreqs < ActiveRecord::Migration[5.2]
  def change
    create_table :chemreqs do |t|
      t.string :emergencey
      t.string :comments

      t.timestamps
    end
  end
end
