class Booking < ApplicationRecord
  belongs_to :experience # experience.user == seller
  belongs_to :user # user
  ESTADO = %w(Próxima Completada Cancelada Aceptada)
  validates :status, presence: true, inclusion: { in: ESTADO }
  validates :date, presence: true
end
