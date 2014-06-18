class ResearchsController < ApplicationController
  before_action :set_researcher, only: [:index, :show, :edit, :update, :destroy]

  def index
    @researchers = Researcher.all
  end

  def show   
    if params[:id]
      @researcher = Researcher.find(params[:applicant_id])
    end 
  end

  def new
    @researcher = Researcher.new
  end

  def create
    @researcher = Researcher.new(params[:researcher])
    if @researcher.save
      redirect_to @researcher, :notice => "Successfully created research application."
    else
      render :action => 'new'
    end
  end

  def edit
    @researcher = Researcher.find(params[:id])
  end

  def update
    @researcher = Researcher.find(params[:id])
    if @researcher.update_attributes(params[:researcher])
      redirect_to @researcher, :notice  => "Successfully updated research application."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @researcher = Researcher.find(params[:id])
    @researcher.destroy
    redirect_to researcher_url, :notice => "Successfully destroyed research application."
  end

  def add_co_researcher
    @researcher = @researcher.co_researchers.new
    1.times { @researcher.co_researcher.build }
  end  

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_researcher
      if params[:id]
        @researcher = Researcher.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_researcher
      params.require(:Researcher).permit(:title, :fname, :midinit, :lname, :owner, :co_researchers_attributes)
    end  
end