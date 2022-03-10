class SelectionRental < ApplicationRecord
  belongs_to :rental
  belongs_to :menu
end
