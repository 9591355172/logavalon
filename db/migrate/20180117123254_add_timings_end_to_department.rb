class AddTimingsEndToDepartment < ActiveRecord::Migration[5.1]
  def change
    add_column :departments, :timings_end, :time
  end
end
