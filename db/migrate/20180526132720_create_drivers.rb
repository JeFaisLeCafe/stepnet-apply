class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.references :company, foreign_key: true
      t.references :vehicule, foreign_key: true

      t.timestamps
    end
  end
end
