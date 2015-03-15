# == Schema Information
#
# Table name: milestone_templates
#
#  id          :integer          not null, primary key
#  template_id :integer
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class MilestoneTemplate < ActiveRecord::Base

	belongs_to :template
  has_many :task_templates, dependent: :destroy
  validates_uniqueness_of :name, scope: :template_id, message: "Looks like you\'ve already added this Milestone Template."
  validates_presence_of :name, message: "Milestone Template must have a name"

	accepts_nested_attributes_for :task_templates, allow_destroy: true

end
