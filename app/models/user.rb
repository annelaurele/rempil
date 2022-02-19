class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shops, dependent: :destroy #As a client
  has_many :rentals, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :shops_as_owner, through: :shops, source: :rentals #Alias pour proprietaire/status
  has_one_attached :photo
end
