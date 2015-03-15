class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
    t.references :project
    t.references :milestone_template

    t.string :name

      t.timestamps null: false
    end
  end
end
