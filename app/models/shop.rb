class Shop < ApplicationRecord
  enum category: {
    boulangerie: 0,
    restaurant: 1,
    boucherie: 2,
    épicerie: 3,
    traiteur: 4,
    salon_de_thé: 5
  }, _prefix: true

  belongs_to :user
  has_many :ratings
  has_many :rentals
  has_many :slot_hours, dependent: :destroy
  has_many :menus
  has_one_attached :photo

  include AlgoliaSearch
  algoliasearch do
    attributes :name, :category
  end
end
