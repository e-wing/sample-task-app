class CreateProjects < ActiveRecord::Migration
	def change
		create_table :projects do |t|
			t.references :template
			t.string :name

			t.timestamps null: false
		end
	end
end
