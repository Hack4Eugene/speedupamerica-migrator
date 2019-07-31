class BackfillLocation < ActiveRecord::Migration
  execute "UPDATE submissions SET location = POINT(longitude, latitude);"
end
