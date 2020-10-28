class Booking < ApplicationRecord
  belongs_to :lesson
  belongs_to :user
  has_one :review, dependent: :destroy

  validates :date, presence: true
end
