class CreateAttandances < ActiveRecord::Migration[6.1]
  def change
    create_table :attandances do |t|
      t.string :employee_id
      t.date :date
      t.timestamps
    end
  end
end
