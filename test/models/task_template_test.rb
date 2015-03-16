# == Schema Information
#
# Table name: task_templates
#
#  id                    :integer          not null, primary key
#  template_id           :integer
#  milestone_template_id :integer
#  name                  :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class TaskTemplateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
