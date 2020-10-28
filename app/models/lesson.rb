class Lesson < ApplicationRecord
  belongs_to :category
  belongs_to :user


  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings, dependent: :destroy


  has_one_attached :photo # cloudinary lesson pic for card

  # validates :name, :description, :price, :duration, presence: true
end
