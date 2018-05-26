class Vehicule < ApplicationRecord
  belongs_to :model
  belongs_to :driver
end
