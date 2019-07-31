class AddLocationToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :location, :point
  end
end