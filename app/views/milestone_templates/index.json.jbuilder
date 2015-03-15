json.array!(@milestone_templates) do |milestone_template|
  json.extract! milestone_template, :id
  json.url milestone_template_url(milestone_template, format: :json)
end
