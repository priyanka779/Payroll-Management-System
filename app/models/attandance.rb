class Attandance < ApplicationRecord
    belongs_to :user

    # validates_confirmation_of :in_time, greater_than: -> { Date.today }

    # validates :in_time, inclusion: { in: (Date.today..Date.today) }
end
