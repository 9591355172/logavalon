class ChangeCheckboxDefault < ActiveRecord::Migration[5.1]
  def change
  	change_column :tasks, :checkbox, :boolean, :default => false
  end
end
