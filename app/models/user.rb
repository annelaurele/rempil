class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum status: {
    graine: 0,
    petite_pousse: 1,
    jolie_fleur: 2,
    grand_arbre: 3
  }, _prefix: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shops, dependent: :destroy #As a client
  has_many :rentals, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :shops_as_owner, through: :shops, source: :rentals #Alias pour proprietaire/status
end
