class Shop < ApplicationRecord
  enum category: {
    Boulangerie: 0,
    Restaurant: 1,
    Boucherie: 2,
    Épicerie: 3,
    Traiteur: 4,
    Salon_de_thé: 5
  }, _prefix: true

  belongs_to :user
  has_many :ratings, dependent: :destroy
  has_many :rentals
  has_many :slot_hours, dependent: :destroy
  has_many :menus, dependent: :destroy
  has_one_attached :photo

  include AlgoliaSearch
  algoliasearch do
    attributes :name, :category
  end

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
