class Shop < ApplicationRecord
  enum category: {
    boulangerie: 0,
    restaurant: 1,
    boucherie: 2,
    epicerie: 3,
    traiteur: 4
  }, _prefix: true

  belongs_to :user
  has_many :ratings
  has_many :rentals
  has_many :slot_hours, dependent: :destroy
  has_one_attached :photo
end
