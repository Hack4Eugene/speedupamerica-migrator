class AddTestDateToSubmissions < ActiveRecord::Migration
    def change
        add_column :submissions, :test_date, :date
        execute "UPDATE submissions SET test_date = DATE(created_at);" 
        change_column_null :submissions, :test_date, false
        remove_index :submissions, name: 'index_submissions_on_created_at_and_ip_address_and_test_type'
        add_index :submissions, [:test_date, :ip_address, :test_type]
    end
end
  