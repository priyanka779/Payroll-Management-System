class ChangeTypeInHrs < ActiveRecord::Migration[6.1]
  def change
  change_column :hrs, :date_start, :date
  change_column :hrs, :date_end, :date
  end
end
