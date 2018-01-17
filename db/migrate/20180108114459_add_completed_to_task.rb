class AddCompletedToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :completed, :text
  end
end
