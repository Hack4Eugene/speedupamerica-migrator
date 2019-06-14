class RenameSomeIsps < ActiveRecord::Migration
    def up
        sql = "UPDATE submissions SET provider = 'XS Media' WHERE provider = 'Online Northwest'"
        records_array = ActiveRecord::Base.connection.execute(sql)

        sql = "UPDATE submissions SET provider = 'Verizon Wireless' WHERE provider = 'Cellco Partnership DBA Verizon Wireless'"
        records_array = ActiveRecord::Base.connection.execute(sql)

        sql = "UPDATE submissions SET provider = 'Verizon Business' WHERE provider = 'MCI Communications Services, Inc. d/b/a Verizon Business'"
        records_array = ActiveRecord::Base.connection.execute(sql)
   end

    def down
        
    end
end