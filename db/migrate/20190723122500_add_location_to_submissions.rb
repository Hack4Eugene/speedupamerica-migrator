class AddLocationToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :location, :point
  end

  execute "UPDATE submissions SET location = POINT(longitude, latitude);"
end