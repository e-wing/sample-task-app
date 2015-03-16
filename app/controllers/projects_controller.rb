class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :new_milestones, :create_milestones,:destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @milestones = @project.milestones
  end

  # GET /projects/new
  def new
    @project = Project.new
    @templates = Template.all
  end

  # GET /projects/1/edit
  def edit
  end

  def new_milestones
    @project.milestones.build
   @project.tasks.build
   @milestones_templates = MilestoneTemplate.where(template_id: @project.template_id)
 end

 def create_milestones
   @project.milestone_ids = params[:project][:milestones]
   @project.task_ids = params[:project][:tasks]
   @milestone = Milestone.new
   @task = Task.new
   @template = Template.find( @project.template_id)
   if @project.update_attributes(project_params)
    redirect_to  view_milestones_path(p: @project.id)
    flash[:notice] = "Successfully Added Tasks & Milestones"
  else
    redirect_to  new_milestones_path(p:  @project.id )
    format.json { render json: @project.errors, status: :unprocessable_entity }
  end
end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      result = ProjectUpdater.perform(@project, update_params) == true
      if result == true
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        @project = result
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    def update_params
      params.require(:project).permit(:name, :milestones => [:name, :milestone_ids, :tasks => [:task_ids] ] )
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:id, :name, :template_id, milestone_attributes:[{:names => []},  {:ids => []}, { :milestone_ids => []},:id, :name, :project_id, :milestone_template_id, :project_id, task_attributes: [{:names => []},  {:ids => []}, { :task_ids => []}, :id, :name, :milestone_id, :task_template_id, :project_id, :_destroy]])
    end
  end
