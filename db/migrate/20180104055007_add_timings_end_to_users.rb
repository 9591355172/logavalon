class AddTimingsEndToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :timings_end, :text
  end
end
