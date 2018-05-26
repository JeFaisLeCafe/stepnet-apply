class Driver < ApplicationRecord
  belongs_to :company
  has_one :vehicule, dependent: :destroy
end
