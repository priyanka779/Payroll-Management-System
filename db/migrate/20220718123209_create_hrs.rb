class CreateHrs < ActiveRecord::Migration[6.1]
  def change
    create_table :hrs do |t|
      
      t.timestamps
    end
  end
end
