class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.boolean :is_list?
      t.integer :note_id
    end
  end
end
