class QualitativeDesignsController < ApplicationController
  def index
    @qualitative_designs = QualitativeDesign.all
  end

  def show
    @qualitative_design = QualitativeDesign.find(params[:id])
  end

  def new
    @qualitative_design = QualitativeDesign.new
  end

  def create
    @qualitative_design = QualitativeDesign.new(params[:qualitative_design])
    if @qualitative_design.save
      redirect_to @qualitative_design, :notice => "Successfully created qualitative design."
    else
      render :action => 'new'
    end
  end

  def edit
    @qualitative_design = QualitativeDesign.find(params[:id])
  end

  def update
    @qualitative_design = QualitativeDesign.find(params[:id])
    if @qualitative_design.update_attributes(params[:qualitative_design])
      redirect_to @qualitative_design, :notice  => "Successfully updated qualitative design."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @qualitative_design = QualitativeDesign.find(params[:id])
    @qualitative_design.destroy
    redirect_to qualitative_designs_url, :notice => "Successfully destroyed qualitative design."
  end
end
