class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
    	t.text :user_id
    	t.text :what_to_do
    	t.text :what_done
    	t.boolean :checkbox
      t.timestamps
    end
  end
end
