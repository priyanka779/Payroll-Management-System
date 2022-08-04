class CreateFinances < ActiveRecord::Migration[6.1]
  def change
    create_table :finances do |t|
      t.integer :basic_salary
      t.integer :allowance
      t.integer :deduction
      t.integer :net_salary
      t.string :status
      t.timestamps
    end
  end
end
