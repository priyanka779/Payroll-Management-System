class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :employee_id
      t.date     :date_of_birth
      t.string   :gender
      t.string   :mobile
      t.date     :date_of_join
      t.string   :city 
      t.boolean :is_active, default: true
      t.timestamps
    end
    add_index :employees, :employee_id, unique: true
  end
end
