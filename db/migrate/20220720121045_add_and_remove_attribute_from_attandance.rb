class AddAndRemoveAttributeFromAttandance < ActiveRecord::Migration[6.1]
  def change
    remove_column :attandances , :employee_id 
    remove_column :attandances , :date
    remove_column :attandances , :attandance_type
    remove_column :attandances , :status
  end
end

