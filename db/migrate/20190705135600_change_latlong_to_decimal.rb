class ChangeLatlongToDecimal < ActiveRecord::Migration
  def change
    change_column :submissions, :latitude, :decimal, precision: 7, scale: 4
    change_column :submissions, :longitude, :decimal, precision: 7, scale: 4
  end
end