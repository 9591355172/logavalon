class RemoveTimingsEndFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :timings_end, :text
  end
end
