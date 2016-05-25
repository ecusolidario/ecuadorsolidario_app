class CreateRecursos < ActiveRecord::Migration
  def change
    create_table :recursos do |t|
      t.string :nombre
      t.integer :cantidad
      t.references :caso, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
