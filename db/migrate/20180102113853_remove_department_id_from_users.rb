class RemoveDepartmentIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :department_id, :integer
  end
end
