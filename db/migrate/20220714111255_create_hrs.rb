class CreateHrs < ActiveRecord::Migration[6.1]
  def change
    create_table :hrs do |t|
      t.string :name
      t.integer :code
      t.string :type
      t.integer :leave_unit
      t.string :description
      t.timestamps
    end
  end
end
