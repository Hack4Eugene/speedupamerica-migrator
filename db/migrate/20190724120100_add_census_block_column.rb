class AddCensusBlockColumn < ActiveRecord::Migration
  def change
    add_column :submissions, :census_block, :string
  end
end