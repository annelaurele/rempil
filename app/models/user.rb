class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum status: {
    grand: 0,
    moyen: 1,
    petit: 2,
    graine: 3
  }, _prefix: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shops, dependent: :destroy #As a client
  has_many :rentals, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :shops_as_owner, through: :shops, source: :rentals #Alias pour proprietaire/status
end
