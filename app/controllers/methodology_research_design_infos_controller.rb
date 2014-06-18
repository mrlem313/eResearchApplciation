class MethodologyResearchDesignInfosController < ApplicationController
  def index
    @methodology_research_design_infos = MethodologyResearchDesignInfo.all
  end

  def show
    @methodology_research_design_info = MethodologyResearchDesignInfo.find(params[:id])
  end

  def new
    @methodology_research_design_info = MethodologyResearchDesignInfo.new
  end

  def create
    @methodology_research_design_info = MethodologyResearchDesignInfo.new(params[:methodology_research_design_info])
    if @methodology_research_design_info.save
      redirect_to @methodology_research_design_info, :notice => "Successfully created methodology research design info."
    else
      render :action => 'new'
    end
  end

  def edit
    @methodology_research_design_info = MethodologyResearchDesignInfo.find(params[:id])
  end

  def update
    @methodology_research_design_info = MethodologyResearchDesignInfo.find(params[:id])
    if @methodology_research_design_info.update_attributes(params[:methodology_research_design_info])
      redirect_to @methodology_research_design_info, :notice  => "Successfully updated methodology research design info."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @methodology_research_design_info = MethodologyResearchDesignInfo.find(params[:id])
    @methodology_research_design_info.destroy
    redirect_to methodology_research_design_infos_url, :notice => "Successfully destroyed methodology research design info."
  end
end
