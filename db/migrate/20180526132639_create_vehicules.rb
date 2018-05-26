class CreateVehicules < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicules do |t|
      t.string :registration
      t.float :km
      t.references :model, foreign_key: true

      t.timestamps
    end
  end
end
