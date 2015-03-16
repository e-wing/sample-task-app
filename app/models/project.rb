class Project < ActiveRecord::Base

belongs_to :template
has_many :milestones
has_many :tasks

	validates_presence_of :name, message: "Project must have a name"
  validates_uniqueness_of :name,  message: "Looks like you\'ve already added this Project."
end
