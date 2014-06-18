class CoResearchersController < ApplicationController
  before_action :set_research_application, only: [:index, :show, :edit, :update, :destroy]

  def index
    @co_researchers = CoResearcher.all
  end

  def show
    @co_researcher = CoResearcher.find(params[:id])
  end

  def new
    @co_researcher = CoResearcher.new
  end

  def create
    @co_researcher = CoResearcher.new(params[:co_researcher])
    if @co_researcher.save
      redirect_to @co_researcher, :notice => "Successfully created co researcher."
    else
      render :action => 'new'
    end
  end

  def edit
    @co_researcher = CoResearcher.find(params[:id])
  end

  def update
    @co_researcher = CoResearcher.find(params[:id])
    if @co_researcher.update_attributes(params[:co_researcher])
      redirect_to @co_researcher, :notice  => "Successfully updated co researcher."
    else
      render :action => 'edit'
    end
  end
 

  def destroy
    @co_researcher = CoResearcher.find(params[:id])
    @co_researcher.destroy
    redirect_to co_researchers_url, :notice => "Successfully destroyed co researcher."
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_co_researcher
      if params[:id]
        @co_researcher = CoResearcher.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_co_researcher
      params.require(:CoResearcher).permit(:research_application_id, :fname, :midinit, :lname, :address, :city, :state, :zipcode, :hphone, :mphone, :email_addr)
    end  
end
