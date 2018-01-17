class AddInTimeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :in_time, :timestamp
  end
end
