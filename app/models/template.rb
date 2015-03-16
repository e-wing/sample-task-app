# == Schema Information
#
# Table name: templates
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Template < ActiveRecord::Base

  has_many :milestone_templates
  has_many :projects

	validates_presence_of :name, message: "Template must have a name"
  validates_uniqueness_of :name,  message: "Looks like you\'ve already added this Template."
end
