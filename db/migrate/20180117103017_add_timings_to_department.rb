class AddTimingsToDepartment < ActiveRecord::Migration[5.1]
  def change
    add_column :departments, :timings, :time
  end
end
