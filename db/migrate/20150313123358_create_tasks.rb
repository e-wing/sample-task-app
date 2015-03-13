class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
t.references :project
t.references :milestone
t.references :task_template
t.string :name
      t.timestamps null: false
    end
  end
end
