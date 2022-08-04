class CreateLeaveManagements < ActiveRecord::Migration[6.1]
  def change
    create_table :leave_managements do |t|
      t.string :leave_type
      t.integer :leave_unit
      t.string  :reason
      t.date :start_date
      t.date :end_date
      
      t.timestamps
    end
  end
end
