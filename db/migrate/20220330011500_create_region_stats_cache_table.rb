class CreateRegionStatsCacheTable < ActiveRecord::Migration
  def change
  create_table :region_stats_caches, id:  false do |t|
    t.string   :stat_type,                limit: 255, null: false
    t.string   :stat_id,                  limit: 255, null: false
    t.string   :date_type,                limit: 255, null: false
    t.date     :date_value,                           null: false
    t.float    :download_avg,             limit: 24,  null: false
    t.float    :download_median,          limit: 24,  null: false
    t.float    :download_max,             limit: 24,  null: false
    t.integer  :download_count,           limit: 4,   null: false
    t.float    :download_sua_avg,         limit: 24,  null: false
    t.float    :download_sua_median,      limit: 24,  null: false
    t.float    :download_sua_max,         limit: 24,  null: false
    t.integer  :download_sua_count,       limit: 4,   null: false
    t.float    :download_0_5,             limit: 24,  null: false
    t.float    :download_6_10,            limit: 24,  null: false
    t.float    :download_11_20,           limit: 24,  null: false
    t.float    :download_21_40,           limit: 24,  null: false
    t.float    :download_40_60,           limit: 24,  null: false
    t.float    :download_61_80,           limit: 24,  null: false
    t.float    :download_81_100,          limit: 24,  null: false
    t.float    :download_101_250,         limit: 24,  null: false
    t.float    :download_251_500,         limit: 24,  null: false
    t.float    :download_500_1000,        limit: 24,  null: false
    t.float    :download_1001,            limit: 24,  null: false
    t.integer  :download_less_than_5,     limit: 4,   null: false
    t.integer  :download_less_than_25,    limit: 4,   null: false
    t.integer  :download_faster_than_100, limit: 4,   null: false
    t.integer  :download_faster_than_250, limit: 4,   null: false
    t.float    :upload_avg,               limit: 24,  null: false
    t.float    :upload_median,            limit: 24,  null: false
    t.float    :upload_max,               limit: 24,  null: false
    t.integer  :upload_count,             limit: 4,   null: false
    t.float    :upload_sua_avg,           limit: 24,  null: false
    t.float    :upload_sua_median,        limit: 24,  null: false
    t.float    :upload_sua_max,           limit: 24,  null: false
    t.integer  :upload_sua_count,         limit: 4,   null: false
    t.float    :upload_0_5,               limit: 24,  null: false
    t.float    :upload_6_10,              limit: 24,  null: false
    t.float    :upload_11_20,             limit: 24,  null: false
    t.float    :upload_21_40,             limit: 24,  null: false
    t.float    :upload_40_60,             limit: 24,  null: false
    t.float    :upload_61_80,             limit: 24,  null: false
    t.float    :upload_81_100,            limit: 24,  null: false
    t.float    :upload_101_250,           limit: 24,  null: false
    t.float    :upload_251_500,           limit: 24,  null: false
    t.float    :upload_500_1000,          limit: 24,  null: false
    t.float    :upload_1001,              limit: 24,  null: false
    t.integer  :upload_less_than_5,       limit: 4,   null: false
    t.integer  :upload_less_than_25,      limit: 4,   null: false
    t.integer  :upload_faster_than_100,   limit: 4,   null: false
    t.integer  :upload_faster_than_250,   limit: 4,   null: false
    t.datetime :created_at,                           null: false
    t.datetime :updated_at,                           null: false
  end

    execute "ALTER TABLE region_stats_caches ADD PRIMARY KEY (stat_type, stat_id, date_type, date_value);"
  end
end


=begin
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

      t.float :download_0_5, null:false
      t.float :download_6_10, null:false
      t.float :download_11_20, null:false
      t.float :download_21_40, null:false
      t.float :download_40_60, null:false
      t.float :download_61_80, null:false
      t.float :download_81_100, null:false
      t.float :download_101_250, null:false
      t.float :download_251_500, null:false
      t.float :download_500_1000, null:false
      t.float :download_1001, null:false

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

      t.float :upload_0_5, null:false
      t.float :upload_6_10, null:false
      t.float :upload_11_20, null:false
      t.float :upload_21_40, null:false
      t.float :upload_40_60, null:false
      t.float :upload_61_80, null:false
      t.float :upload_81_100, null:false
      t.float :upload_101_250, null:false
      t.float :upload_251_500, null:false
      t.float :upload_500_1000, null:false
      t.float :upload_1001, null:false

      t.integer :upload_less_than_5, null:false
      t.integer :upload_less_than_25, null:false
      t.integer :upload_faster_than_100, null:false
      t.integer :upload_faster_than_250, null:false

      t.timestamps null: false
    end
=end