class CreateBoundariesTable < ActiveRecord::Migration
  def change
    create_table :boundaries, id: false do |t|
      t.string :boundary_type, limit: 32, null: false
      t.string :boundary_id, limit: 64, null: false
      t.column :geometry, :geometry, null: false 
      t.timestamps null: false
    end

    execute "ALTER TABLE boundaries ADD PRIMARY KEY (boundary_type, boundary_id);"
    execute "CREATE SPATIAL INDEX boundaries_geometry_index ON boundaries (geometry);"
  end    
end
  