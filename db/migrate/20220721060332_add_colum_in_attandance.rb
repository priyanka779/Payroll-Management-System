class AddColumInAttandance < ActiveRecord::Migration[6.1]
  def change
    add_column :attandances, :in_time, :datetime
    add_column :attandances, :out_time, :datetime
  end
end
