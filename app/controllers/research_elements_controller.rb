class ResearchElementsController < ApplicationController
  def index
    @research_elements = ResearchElement.all
  end

  def show
    @research_element = ResearchElement.find(params[:id])
  end

  def new
    @research_element = ResearchElement.new
  end

  def create
    @research_element = ResearchElement.new(params[:research_element])
    if @research_element.save
      redirect_to @research_element, :notice => "Successfully created research element."
    else
      render :action => 'new'
    end
  end

  def edit
    @research_element = ResearchElement.find(params[:id])
  end

  def update
    @research_element = ResearchElement.find(params[:id])
    if @research_element.update_attributes(params[:research_element])
      redirect_to @research_element, :notice  => "Successfully updated research element."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @research_element = ResearchElement.find(params[:id])
    @research_element.destroy
    redirect_to research_elements_url, :notice => "Successfully destroyed research element."
  end
end
