class Category < ApplicationRecord
  has_many :lessons
  has_one_attached :image
end
