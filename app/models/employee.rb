class Employee < ApplicationRecord
  has_one :user ,dependent: :destroy
end
 