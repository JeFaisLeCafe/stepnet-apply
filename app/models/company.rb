class Company < ApplicationRecord
  has_many :drivers, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
end
