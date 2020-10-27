class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :lesson
  has_many :bookings
  has_many :lessons, through: :bookings
  has_many :reviews, through: :lessons
  has_many :reviews, through: :bookings

  has_one_attached :photo #cloudinary profile pic
end
