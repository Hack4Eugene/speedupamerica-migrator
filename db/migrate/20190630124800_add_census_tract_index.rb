class AddCensusTractIndex < ActiveRecord::Migration
  def change
    add_index :submissions, [:census_code]
  end
end
