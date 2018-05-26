class Company < ApplicationRecord
  has_many :drivers, dependent: :destroy
end
