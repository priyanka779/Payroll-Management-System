class AddUserIdToFinance < ActiveRecord::Migration[6.1]
  def change
    add_reference :finances, :user
  end
end
