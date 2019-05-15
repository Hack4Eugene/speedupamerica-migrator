class AddGeomtypeToCensusboundaries < ActiveRecord::Migration
  def change
    add_column :census_boundaries, :geom_type, :string
  end
end
