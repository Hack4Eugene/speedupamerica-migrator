class AddStatsCacheTable < ActiveRecord::Migration
    def change
      create_table :stats_cache, id: false do |t|
        t.string :boundary_type, null:false
        t.string :boundary_id, null:false
        t.string :date_type, null:false
        t.date :date_value, null:false

        t.float :all_avg_upload, null:false
        t.float :all_median_upload, null:false
        t.integer :all_count_upload, null:false
        t.float :all_avg_download, null:false
        t.float :all_median_download, null:false
        t.integer :all_count_download, null:false
        t.float :sua_avg_upload, null:false
        t.float :sua_median_upload, null:false
        t.integer :sua_count_upload, null:false
        t.float :sua_avg_download, null:false
        t.float :sua_median_download, null:false
        t.integer :sua_count_download, null:false
  
        t.timestamps null: false
      end

      execute "ALTER TABLE stats_cache ADD PRIMARY KEY (boundary_type, boundary_id, date_type, date_value);"
    end
  end
  