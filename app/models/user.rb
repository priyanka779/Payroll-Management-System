class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # --------------Using Assosiation--------------
  has_one :employee 

  has_many :attandances

  has_many :leave_managements



  #---------------Validation---------------------
  validates :name, presence: true

  
  enum role: [:employee , :admin ,:hr ,:finance ].map{|x| [x.to_s, x.to_s]}.to_h
  after_initialize :set_default_role , :if => :new_record?

  #-----------------add funtion to implement in User Modle -------


  def set_default_role
    self.role ||= :user
  end










end
