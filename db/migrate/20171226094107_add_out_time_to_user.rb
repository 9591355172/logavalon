class AddOutTimeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :out_time, :timestamp
  end
end
