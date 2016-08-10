class AddYoutubeToCaso < ActiveRecord::Migration
  def change
    add_column :casos, :youtubevideo, :string
  end
end
