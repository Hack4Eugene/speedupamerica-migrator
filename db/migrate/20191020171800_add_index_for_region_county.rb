class AddIndexForRegionCounty < ActiveRecord::Migration
  def change
    add_index :submissions, [:region,:test_type,:test_date]
    add_index :submissions, [:county,:test_type,:test_date]
  end
end
