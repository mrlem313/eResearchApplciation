class ResearchApplicationsController < ApplicationController
  before_action :set_research_application, only: [:index, :show, :edit, :update, :destroy]

  def index
    @research_applications = ResearchApplication.all
    render(:layout => "layouts/application")
  end

  def show
    if params[:id]
      @research_application = ResearchApplication.find(params[:id])
      @name = @research_application.owner
      session[:applicant] = @name
      session[:applicant_id] = @research_application.id
    end 
  end

  def new
    @research_application = ResearchApplication.new
  end

  def create
    @research_application = ResearchApplication.new(params[:research_application])
    if @research_application.save
      redirect_to @research_application, :notice => "Successfully created research application."
    else
      render :action => 'new'
    end
  end

  def edit
    @research_application = ResearchApplication.find(params[:id])
  end

  def update
    @research_application = ResearchApplication.find(params[:id])
    if @research_application.update_attributes(params[:research_application])
      redirect_to @research_application, :notice  => "Successfully updated research application."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @research_application = ResearchApplication.find(params[:id])
    @research_application.destroy
    redirect_to research_applications_url, :notice => "Successfully destroyed research application."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_research_application
      if params[:id]
        @research_application = ResearchApplication.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_research_application
      params.require(:ResearchApplication).permit(:title, :fname, :midinit, :lname, :owner)
    end  
end
