class CreateMilestoneTemplates < ActiveRecord::Migration

	def change
		create_table :templates do |t|
			t.string :name

			t.timestamps null: false
		end
	end

	def change
		create_table :milestone_templates do |t|
			t.references :template
			t.string :name
			t.timestamps null: false
		end
	end
end
