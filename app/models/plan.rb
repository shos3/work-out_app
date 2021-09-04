class Plan < ApplicationRecord

  with_options presence: true do
    validates :start_time
    validates :event
    validates :kg
    validates :number
    validates :set
    validates :time
  end

  validate :memo


  belongs_to :user
end
