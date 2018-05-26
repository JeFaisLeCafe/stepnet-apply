class Driver < ApplicationRecord
  belongs_to :company
  has_one :vehicule, dependent: :destroy

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :phone, format: { with: /\A0[1-68]([ .-]?[0-9]{2}){4}\z/, message: "Should be a real number" }
  validates :phone, uniqueness: true
end
