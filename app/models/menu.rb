class Menu < ApplicationRecord
  belongs_to :shop
  belongs_to :rental, optional: true
  belongs_to :SelectionRental
end
