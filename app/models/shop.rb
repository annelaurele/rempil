class Shop < ApplicationRecord
  enum category: {
    boolangerie: 0,
  }, _prefix: true

  belongs_to :user
  has_many :ratings
  has_many :rentals
  has_one_attached :photo
end
