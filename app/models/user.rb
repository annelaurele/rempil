class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shops #As a client
  has_many :rentals
  has_many :rates
  has_many :shops_as_owner, through: :shops, source: :rentals #Alias pour proprietaire/status
end
