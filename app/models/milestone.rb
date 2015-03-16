class Milestone < ActiveRecord::Base

	belongs_to :project
	belongs_to :milestone_template
	has_many :tasks, dependent: :destroy

	validates_presence_of :name, message: "Enter the Milestone Name."
  validates_uniqueness_of :name, scope: :project_id, message: "Looks like you\'ve already added this Milestone."


	accepts_nested_attributes_for :tasks, allow_destroy: true

end
