class BoundariesEnabledFlag < ActiveRecord::Migration
  def change
    add_column :boundaries, :enabled, :boolean, default: false
  end
end
