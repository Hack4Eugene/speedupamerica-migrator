class AddIndexForBlocks < ActiveRecord::Migration
  def change
    add_index :submissions, [:census_block,:test_type,:test_date]
  end
end
