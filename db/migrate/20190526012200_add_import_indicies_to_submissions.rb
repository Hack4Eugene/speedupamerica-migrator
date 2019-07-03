class AddImportIndiciesToSubmissions < ActiveRecord::Migration
  def change
    add_index :submissions, [:created_at, :ip_address, :test_type]
  end
end
