class Employee < ApplicationRecord
  #---------Add assosiation--------------
  belongs_to :user

  #---------Add Validation ---------------

  validates :employee_id, presence: true, uniqueness: true
  validates :date_of_birth, presence: true
  validates :date_of_join, presence: true
  validates :city, presence: true 
  number_regex = /\b^([6789][0-9]{9})$\b/
  validates_format_of :mobile, :with =>  number_regex, :message => " No only indian without spaces are allowed"
  

end 