class CreateRequestForms < ActiveRecord::Migration[5.2]
  def change
    create_table :request_forms do |t|
      t.text :emergency
      t.text :additional_comments

      t.timestamps
    end
  end
end
