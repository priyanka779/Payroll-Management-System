class AddReferenceToLeaveManagement < ActiveRecord::Migration[6.1]
  def change
    add_reference :leave_managements, :user
  end
end
