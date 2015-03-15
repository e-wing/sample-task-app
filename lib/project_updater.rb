class ProjectUpdater

  def self.perform(project, params)
    milestones = params[:project][:milestones]
    #Create and save each milestone
    # You might be able to us nested attributes to save tasks.

    if project.update_attributes(params[:project])
      return true
    else
      return project
    end
  end
end
