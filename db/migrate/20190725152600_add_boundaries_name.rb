class AddBoundariesName < ActiveRecord::Migration
    def change
      add_column :boundaries, :name, :string
    end
  end