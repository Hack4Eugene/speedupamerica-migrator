class AddStatsIndexToSubmissions < ActiveRecord::Migration
def change
    add_index :submissions, [:provider, :test_date, :test_type]
end
end