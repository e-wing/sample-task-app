class TaskTemplate < ActiveRecord::Base
	 belongs_to :milestone_template, inverse_of: :task_templates

	 validates_uniqueness_of :name, scope: :milestone_template_id, message: "Looks like you\'ve already added this Task Template."
  validates_presence_of :name, message: " Task Template must have a name"
end
