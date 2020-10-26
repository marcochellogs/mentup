class Lesson < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings

  # validates :name, :description, :price, :duration, presence: true
end
