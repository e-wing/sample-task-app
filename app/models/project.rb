# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  template_id :integer
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Project < ActiveRecord::Base

  belongs_to :template
  has_many :milestones
  has_many :tasks

	validates_presence_of :name, message: "Project must have a name"
  validates_uniqueness_of :name,  message: "Looks like you\'ve already added this Project."
  validates :template_id, presence: true
end
