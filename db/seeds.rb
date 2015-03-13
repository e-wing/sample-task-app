# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Template.create!(name: "Yellow Template", id: 1)
# Template.create!(name: "Green Template", id: 2)


# Project.create!(name: "Sample Project 2",template_id: 2, id: 155)
# Project.create!(name: "Sample Project 1",template_id: 1, id: 255)


# MilestoneTemplate.create!({ template_id: 1, id:15, name: "Green Milestone 1"})
MilestoneTemplate.create!(name: "Green Milestone 2", template_id: 1, id:16)
MilestoneTemplate.create!(name: "Green Milestone 3", template_id: 1, id:17)

MilestoneTemplate.create!(name: "Yellow Milestone 1", template_id: 2, id:18)
MilestoneTemplate.create!(name: "Yellow Milestone 2", template_id: 2, id:19)
MilestoneTemplate.create!(name: "Yellow Milestone 3", template_id: 2, id:20)


TaskTemplate.create!(name: "YM1 Task 1", milestone_template_id: 18)
TaskTemplate.create!(name: "YM1 Task 2", milestone_template_id:  18)
TaskTemplate.create!(name: "YM1 Task 3", milestone_template_id:  18)

TaskTemplate.create!(name: "YM2 Task 1",milestone_template_id: 19)
TaskTemplate.create!(name: "YM2 Task 2", milestone_template_id:  19)
TaskTemplate.create!(name: "YM2 Task 3", milestone_template_id:  19)

TaskTemplate.create!(name: "YM3 Task 1",milestone_template_id: 20)
TaskTemplate.create!(name: "YM3 Task 2", milestone_template_id: 20)
TaskTemplate.create!(name: "YM3 Task 3", milestone_template_id: 20)

TaskTemplate.create!(name: "GM1 Task 1",milestone_template_id: 15)
TaskTemplate.create!(name: "GM1 Task 2", milestone_template_id:  15)
TaskTemplate.create!(name: "GM1 Task 3", milestone_template_id:  15)

TaskTemplate.create!(name: "GM2 Task 1",milestone_template_id: 16)
TaskTemplate.create!(name: "GM2 Task 2", milestone_template_id:  16)
TaskTemplate.create!(name: "GM2 Task 3", milestone_template_id:  16)

TaskTemplate.create!(name: "GM3 Task 1",milestone_template_id: 17)
TaskTemplate.create!(name: "GM3 Task 2", milestone_template_id: 17)
TaskTemplate.create!(name: "GM3 Task 3", milestone_template_id:  17)