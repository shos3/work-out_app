class Plan < ApplicationRecord
  validates :event, presence: true
  validates :kg, presence: true
  validates :number, presence: true
  validates :set, presence: true
  validates :time, presence: true
  validates :memo
  validates :start_time, presence: true

  belongs_to :user
end
