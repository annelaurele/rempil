class Shop < ApplicationRecord
  belongs_to :user
  has_many :ratings
  has_many :rentals
  has_one_attached :photo
end
