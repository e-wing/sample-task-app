class MilestoneTemplatesController < ApplicationController
  before_action :set_milestone_template, only: [:show, :edit, :update, :destroy]

  # GET /milestone_templates
  # GET /milestone_templates.json
  def index
    @milestone_templates = MilestoneTemplate.all
  end

  # GET /milestone_templates/1
  # GET /milestone_templates/1.json
  def show
  end

  # GET /milestone_templates/new
  def new
    @milestone_template = MilestoneTemplate.new
  end

  # GET /milestone_templates/1/edit
  def edit
  end

  # POST /milestone_templates
  # POST /milestone_templates.json
  def create
    @milestone_template = MilestoneTemplate.new(milestone_template_params)

    respond_to do |format|
      if @milestone_template.save
        format.html { redirect_to @milestone_template, notice: 'Milestone template was successfully created.' }
        format.json { render :show, status: :created, location: @milestone_template }
      else
        format.html { render :new }
        format.json { render json: @milestone_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /milestone_templates/1
  # PATCH/PUT /milestone_templates/1.json
  def update
    respond_to do |format|
      if @milestone_template.update(milestone_template_params)
        format.html { redirect_to @milestone_template, notice: 'Milestone template was successfully updated.' }
        format.json { render :show, status: :ok, location: @milestone_template }
      else
        format.html { render :edit }
        format.json { render json: @milestone_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /milestone_templates/1
  # DELETE /milestone_templates/1.json
  def destroy
    @milestone_template.destroy
    respond_to do |format|
      format.html { redirect_to milestone_templates_url, notice: 'Milestone template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milestone_template
      @milestone_template = MilestoneTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def milestone_template_params
params.require(:milestone_template).permit(:id, :name, :template_id, 
      task_template_attributes: [:id, :name, :milestone_template_id])    end
end
