class CreateTaskTemplates < ActiveRecord::Migration
  def change
    create_table :task_templates do |t|
t.references :template
t.references :milestone_template
t.string :name
      t.timestamps null: false
    end
  end
end
