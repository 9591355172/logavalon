class AddDeptNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :dept_name, :string
  end
end
