class Rental < ApplicationRecord
  belongs_to :shop
  belongs_to :user
  has_many :menus
end
