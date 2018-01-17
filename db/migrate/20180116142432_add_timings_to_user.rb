class AddTimingsToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :timings, :'time with time zone'
  end
end
