class ChangeColumnSizeOfProviderName < ActiveRecord::Migration
  def up
    change_column :provider_statistics, :name, :string, null: false, limit: 255
  end
  
  def down
    change_column :provider_statistics, :name, :string, null: false, limit: 50
  end
end