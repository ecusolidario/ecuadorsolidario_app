class UpdateForeignKey < ActiveRecord::Migration
  def change
    # remove the old foreign_key
    remove_foreign_key :recursos, :casos

    # add the new foreign_key
    add_foreign_key :recursos, :casos, on_delete: :cascade
  end
end
