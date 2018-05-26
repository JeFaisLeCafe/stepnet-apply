class AddDriverToVehicule < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicules, :driver, foreign_key: true
  end
end
