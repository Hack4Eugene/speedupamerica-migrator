class AddRegionToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :country_code, :string
    add_column :submissions, :region, :string
    add_column :submissions, :county, :string
    add_column :submissions, :accuracy, :integer
    add_index :submissions, [:country_code, :region, :test_type]
  end
end