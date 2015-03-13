class Template < ActiveRecord::Base
 
 has_many :milestone_templates
 has_many :projects

	validates_presence_of :name, message: "Template must have a name"
  validates_uniqueness_of :name,  message: "Looks like you\'ve already added this Template."
end
