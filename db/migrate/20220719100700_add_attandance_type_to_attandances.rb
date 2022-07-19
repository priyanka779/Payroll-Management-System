class AddAttandanceTypeToAttandances < ActiveRecord::Migration[6.1]
  def change
    add_column :attandances, :attandance_type, :string
    add_column :attandances, :in_time, :time
    add_column :attandances, :out_time, :time
    add_column :attandances, :status, :string
  end
end
