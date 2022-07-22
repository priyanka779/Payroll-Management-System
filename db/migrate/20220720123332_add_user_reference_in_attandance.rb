class AddUserReferenceInAttandance < ActiveRecord::Migration[6.1]
  def change
    add_reference :attandances, :user ,foreign_key: true
  end
end
