class LeaveManagement < ApplicationRecord
  #----------Add Assosiation-------
  belongs_to :user
  #----------Add validation---------
  
  validates :leave_type, presence:true
  number_regex = /\b^([0-9]{1})$\b/
  validates_format_of :leave_unit, :with =>  number_regex, :message => " valid only integer "
  validates :reason ,presence:true ,length: { maximum: 500 }
  validates :start_date, :end_date, presence: true
  # validate :end_date_after_start_date

  # private
  
  # def end_date_after_start_date
  #   return if end_date.blank? || start_date.blank?
  #   if end_date < start_date
  #     errors.add(:end_date, "must be after the start date")
  #   end
  # end
  # validates :start_date timeliness: { on_or_before: lambda { Date.current }, type: :date }
  # enum leave_type: [:paid , :unpaid ,:Casual_leave,:emergency_leave,:sick_Leave,:maternity_leave  ].map{|x| [x.to_s, x.to_s]}.to_h
  # after_initialize :set_default_leave_type , :if => :new_record?

  # def set_default_leave_type
  #   self.leave_type  || :Casual_leave
  # end
end
