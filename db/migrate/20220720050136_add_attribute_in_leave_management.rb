class AddAttributeInLeaveManagement < ActiveRecord::Migration[6.1]
  def change
    add_column :leave_managements ,:status ,:integer, default: 0, index: true
  end
end
