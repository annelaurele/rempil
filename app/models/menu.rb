class Menu < ApplicationRecord
  belongs_to :shop
  belongs_to :rental, optional: true

  has_many :selection_rentals, dependent: :destroy
end
