class AddLeaveToHrs < ActiveRecord::Migration[6.1]
  def change
    add_column :hrs, :leave_type, :string
    add_column :hrs, :date_start, :datetime
    add_column :hrs, :date_end, :datetime
    remove_column :hrs,:type
  end
end
