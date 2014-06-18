class ResearchDataController < ApplicationController
  def index
    @research_data = ResearchData.all
  end

  def show
    @research_data = ResearchData.find(params[:id])
  end

  def new
    @research_data = ResearchData.new
  end

  def create
    @research_data = ResearchData.new(params[:research_data])
    if @research_data.save
      redirect_to @research_data, :notice => "Successfully created research data."
    else
      render :action => 'new'
    end
  end

  def edit
    @research_data = ResearchData.find(params[:id])
  end

  def update
    @research_data = ResearchData.find(params[:id])
    if @research_data.update_attributes(params[:research_data])
      redirect_to @research_data, :notice  => "Successfully updated research data."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @research_data = ResearchData.find(params[:id])
    @research_data.destroy
    redirect_to research_data_url, :notice => "Successfully destroyed research data."
  end
end
