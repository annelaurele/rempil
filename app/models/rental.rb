class Rental < ApplicationRecord
  enum status: {
    en_cours: 0,
    rendu: 1,
    payé: 2,
  }, _prefix: true
  belongs_to :shop
  belongs_to :user
  has_many :menus

  has_many :selection_rentals, dependent: :destroy
end
