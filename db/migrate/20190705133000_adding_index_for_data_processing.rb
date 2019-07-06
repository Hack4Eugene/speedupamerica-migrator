class AddingIndexForDataProcessing < ActiveRecord::Migration
  def change
    add_index :submissions, [:census_code,:test_type,:test_date]
    add_index :submissions, [:zip_code,:test_type,:test_date]
    add_index :submissions, [:provider,:test_type,:test_date]
  end
end
