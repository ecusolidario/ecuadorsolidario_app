class AddLatitudeAndLongitudeToCaso < ActiveRecord::Migration
  def change
    add_column :casos, :latitude, :float
    add_column :casos, :longitude, :float
  end
end
