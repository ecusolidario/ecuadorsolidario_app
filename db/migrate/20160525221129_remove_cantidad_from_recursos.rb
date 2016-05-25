class RemoveCantidadFromRecursos < ActiveRecord::Migration
  def change
    remove_column :recursos, :cantidad, :integer
  end
end
