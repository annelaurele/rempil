class Shop < ApplicationRecord
  belongs_to :user
  has_many :ratings
  has_many :rentals
  has_many :slot_hours, dependent: :destroy
  has_one_attached :photo
end
