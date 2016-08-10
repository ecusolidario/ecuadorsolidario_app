class CreateCasos < ActiveRecord::Migration
  def change
    create_table :casos do |t|
      t.string :titulo
      t.text :problema
      t.string :ubicacion
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
