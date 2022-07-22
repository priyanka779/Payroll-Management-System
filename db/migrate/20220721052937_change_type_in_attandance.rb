class ChangeTypeInAttandance < ActiveRecord::Migration[6.1]
  def change
      remove_column :attandances, :in_time
      remove_column :attandances, :out_time
  end
end
