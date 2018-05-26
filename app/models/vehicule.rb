class Vehicule < ApplicationRecord
  belongs_to :model
  belongs_to :driver

  validates :model, presence: true

  validates :registration, presence: true
  validates :registration, length: { minimum: 5 }
  validates :registration, uniqueness: true
end
