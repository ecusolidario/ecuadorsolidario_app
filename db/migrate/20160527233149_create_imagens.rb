class CreateImagens < ActiveRecord::Migration
  def change
    create_table :imagens do |t|
      t.attachment :imagen

      t.timestamps null: false
    end
  end
end
