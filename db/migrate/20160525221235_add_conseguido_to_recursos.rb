class AddConseguidoToRecursos < ActiveRecord::Migration
  def change
    add_column :recursos, :conseguidos, :integer
  end
end
