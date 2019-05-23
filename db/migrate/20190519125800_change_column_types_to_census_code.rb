class ChangeColumnTypesToCensusCode < ActiveRecord::Migration
  def up
    change_column :submissions, :census_code, :string, null: true
  end
  
  def down
    change_column :submissions, :census_code, :integer, null: true
  end
end
  