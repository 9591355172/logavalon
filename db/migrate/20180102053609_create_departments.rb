class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.text :dept_name

      t.timestamps
    end
  end
end
