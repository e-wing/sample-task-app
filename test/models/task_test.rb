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

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
