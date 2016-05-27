class AddCasoIdToImagens < ActiveRecord::Migration
  def change
    add_column :imagens, :caso_id, :integer
  end
end
