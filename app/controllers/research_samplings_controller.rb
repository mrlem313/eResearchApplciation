class ResearchSamplingsController < ApplicationController
  def index
    @research_samplings = ResearchSampling.all
  end

  def show
    @research_sampling = ResearchSampling.find(params[:id])
  end

  def new
    @research_sampling = ResearchSampling.new
  end

  def create
    @research_sampling = ResearchSampling.new(params[:research_sampling])
    if @research_sampling.save
      redirect_to @research_sampling, :notice => "Successfully created research sampling."
    else
      render :action => 'new'
    end
  end

  def edit
    @research_sampling = ResearchSampling.find(params[:id])
  end

  def update
    @research_sampling = ResearchSampling.find(params[:id])
    if @research_sampling.update_attributes(params[:research_sampling])
      redirect_to @research_sampling, :notice  => "Successfully updated research sampling."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @research_sampling = ResearchSampling.find(params[:id])
    @research_sampling.destroy
    redirect_to research_samplings_url, :notice => "Successfully destroyed research sampling."
  end
end
