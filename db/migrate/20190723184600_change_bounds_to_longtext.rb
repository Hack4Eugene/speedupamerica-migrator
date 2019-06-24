class ChangeBoundsToLongtext < ActiveRecord::Migration
  def up
    change_column :census_boundaries, :bounds, :text, null: true, limit: 4294967295
  end
  
  def down
  end
end