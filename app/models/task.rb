# == Schema Information
#
# Table name: tasks
#
#  id               :integer          not null, primary key
#  project_id       :integer
#  milestone_id     :integer
#  task_template_id :integer
#  name             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Task < ActiveRecord::Base

 belongs_to :project
 belongs_to :milestone
  belongs_to :task_template

 validates_uniqueness_of :name, scope: :project_id, message: "Looks like you\'ve already added this Task to this Project."
  # validates_presence_of :name, message: " Task must have a name"
end
