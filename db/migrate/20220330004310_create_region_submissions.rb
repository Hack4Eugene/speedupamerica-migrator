class CreateRegionSubmissions < ActiveRecord::Migration
 def change
  create_table :region_submissions do |t|
    t.string   :testing_for,         limit: 255, null: false
    t.string   :address,             limit: 250, null: false
    t.string   :zip_code,             limit: 10
    t.string   :provider,            limit: 255, null: false
    t.string   :connected_with,      limit: 255, null: false
    t.float    :monthly_price,       limit: 24, null: false
    t.float    :provider_down_speed, limit: 24, null: false
    t.decimal  :provider_price,      precision: 15, scale: 2, null: false
    t.float    :actual_down_speed,   limit: 24, null: false
    t.decimal  :actual_price,        precision: 15, scale: 2, null: false
    t.integer  :rating,              limit: 4, null: false
    t.boolean  :completed,           default: false
    t.datetime :created_at,          null: false
    t.datetime :updated_at,          null: false
    t.decimal  :latitude,            precision: 7,  scale: 4, null: false
    t.decimal  :longitude,           precision: 7,  scale: 4, null: false
    t.integer  :ping,                limit: 4, null: false
    t.float    :actual_upload_speed, limit: 24, default: 0.0
    t.string   :test_id,             limit: 140, null: false
    t.string   :ip_address,          limit: 60, null: false
    t.string   :hostname,            limit: 255, null: false
    t.boolean  :from_mlab,           default: false
    t.string   :area_code,           limit: 15, null: false
    t.string   :test_type,           limit: 15,  default: "both"
    t.string   :census_code,         limit: 255, null: false
    t.float    :upload_median,       limit: 24, null: false
    t.float    :download_median,     limit: 24, null: false
    t.string   :census_status,       limit: 10, null: false
    t.date     :test_date,           null: false
    t.string   :country_code,        limit: 255, null: false
    t.string   :region,              limit: 255, null: false
    t.string   :county,              limit: 255, null: false
    t.integer  :accuracy,            limit: 4, null: false
    t.integer  :location,            limit: 4, null: false
    t.string   :census_block,        limit: 255, null: false
    t.string   :access,              limit: 255
    t.string   :whynoaccess,              limit: 255
    end
  end
end


=begin
   create_table :region_submissions do |t|
     t.string :testing_for, limit: 20, null: false
     t.string :address, limit: 100, null: false
     t.integer :zip_code
     t.string :provider, limit: 50, null: false
     t.string :connected_with, limit: 50, null: false
     t.float :monthly_price, null: false
     t.float :provider_down_speed, null: false
     t.float :provider_price, null: false
     t.float :actual_down_speed, null: false
     t.float :actual_price, null: false
     t.integer :rating, null: false
     t.boolean :completed, default: false
     t.timestamps null: false
   end
=end 

