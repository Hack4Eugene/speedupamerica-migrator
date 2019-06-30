class AddStatsCacheTable < ActiveRecord::Migration
  def change
    create_table :stats_caches, id: false do |t|
      t.string :stat_type, null:false
      t.string :stat_id, null:false
      t.string :date_type, null:false
      t.date :date_value, null:false       

      t.float :download_avg, null:false
      t.float :download_median, null:false
      t.float :download_max, null:false
      t.integer :download_count, null:false

      t.float :download_sua_avg, null:false
      t.float :download_sua_median, null:false
      t.float :download_sua_max, null:false
      t.integer :download_sua_count, null:false

      t.integer :download_0_5, null:false
      t.integer :download_6_10, null:false
      t.integer :download_11_20, null:false
      t.integer :download_21_40, null:false
      t.integer :download_40_60, null:false
      t.integer :download_61_80, null:false
      t.integer :download_81_100, null:false
      t.integer :download_101_250, null:false
      t.integer :download_251_500, null:false
      t.integer :download_500_1000, null:false
      t.integer :download_1001, null:false

      t.integer :download_less_than_5, null:false
      t.integer :download_less_than_25, null:false
      t.integer :download_faster_than_100, null:false
      t.integer :download_faster_than_250, null:false

      t.float :upload_avg, null:false
      t.float :upload_median, null:false
      t.float :upload_max, null:false
      t.integer :upload_count, null:false
      
      t.float :upload_sua_avg, null:false
      t.float :upload_sua_median, null:false
      t.float :upload_sua_max, null:false
      t.integer :upload_sua_count, null:false

      t.integer :upload_0_5, null:false
      t.integer :upload_6_10, null:false
      t.integer :upload_11_20, null:false
      t.integer :upload_21_40, null:false
      t.integer :upload_40_60, null:false
      t.integer :upload_61_80, null:false
      t.integer :upload_81_100, null:false
      t.integer :upload_101_250, null:false
      t.integer :upload_251_500, null:false
      t.integer :upload_500_1000, null:false
      t.integer :upload_1001, null:false

      t.integer :upload_less_than_5, null:false
      t.integer :upload_less_than_25, null:false
      t.integer :upload_faster_than_100, null:false
      t.integer :upload_faster_than_250, null:false

      t.timestamps null: false
    end

    execute "ALTER TABLE stats_caches ADD PRIMARY KEY (stat_type, stat_id, date_type, date_value);"
  end
end
