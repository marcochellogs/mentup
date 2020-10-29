class Lesson < ApplicationRecord
  belongs_to :category
  belongs_to :user


  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings, dependent: :destroy


  has_one_attached :photo # cloudinary lesson pic for card

  include PgSearch::Model
    pg_search_scope :search_by_name_and_description,
      against: [ :name, :description ],
      associated_against: {
      user: [:name, :bio],
      category: [ :name ],
      },
      using: {
        tsearch: { prefix: true }
      }

  # validates :name, :description, :price, :duration, presence: true
end
