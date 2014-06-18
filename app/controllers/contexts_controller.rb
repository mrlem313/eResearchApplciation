class ResearchContextsController < ApplicationController
  before_action :set_research_context, only: [:index, :show, :edit, :update, :destroy]

  def index
    @researchcontext = ResearchContext.all
  end

  def show
    @researchcontext = ResearchContext.find(params[:id])
  end

  def new
    @researchcontext = ResearchContext.new
  end

  def create
    @researchcontext = ResearchContext.new(params[:ResearchContext])
    if @researchcontext.save
      redirect_to @researchcontext, :notice => "Successfully created ResearchContext."
    else
      render :action => 'new'
    end
  end

  def edit
    @researchcontext = ResearchContext.find(params[:id])
  end

  def update
    @researchcontext = ResearchContext.find(params[:id])
    if @researchcontext.update_attributes(params[:ResearchContext])
      redirect_to @researchcontext, :notice  => "Successfully updated ResearchContext."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @researchcontext = ResearchContext.find(params[:id])
    @researchcontext.destroy
    redirect_to ResearchContexts_url, :notice => "Successfully destroyed ResearchContext."
  end


   private
    # Use callbacks to share common setup or constraints between actions.
    def set_ResearchContext
      if params[:id]
        @research_context = ResearchContext.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_ResearchContext
      params.require(:ResearchContext).permit(:research_application_id, :classification, :other)
    end  
end
