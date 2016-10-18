class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.string :modelo
      t.string :marca
      t.integer :km

      t.timestamps null: false
    end
  end
end
