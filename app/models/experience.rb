class Experience < ApplicationRecord
  belongs_to :user # seller
  has_many :bookings
  has_many :users, through: :bookings # users

  CATEGORY = %w(Gastronomia Deportes Entretenimiento Cultura)

  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :price, presence: true
  validates :availability, presence: true
  validates :description, presence: true, length: { minimum: 100 }
  validates :place, presence: true
end
