class AddApproverToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :approver, :string
  end
end
