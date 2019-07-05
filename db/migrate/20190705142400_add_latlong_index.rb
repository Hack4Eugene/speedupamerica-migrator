class AddLatlongIndex < ActiveRecord::Migration
    def change
      add_index :submissions, [:latitude, :longitude]
    end
  end
  