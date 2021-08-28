class Plan < ApplicationRecord
  # validates :date, presence: true
  validates :event, presence: true
  validates :kg, presence: true
  validates :number, presence: true
  validates :set, presence: true
  validates :time, presence: true
  validate :memo,allow_blank: true
  validates :start_time, presence: true

  belongs_to :user
end
