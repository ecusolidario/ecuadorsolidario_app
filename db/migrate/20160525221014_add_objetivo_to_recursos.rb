class AddObjetivoToRecursos < ActiveRecord::Migration
  def change
    add_column :recursos, :objetivo, :integer
  end
end
